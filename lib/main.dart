import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:selene/features/banners/widgets/banner_frame.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/features/settings/screens/appearance/themes/data/themes.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';
import 'package:selene/router/router.dart' show SeleneRouter;
import 'package:selene/utils/isar.dart';
import 'package:selene/utils/responsive_layout.dart';
import 'package:selene/utils/theming.dart';
import 'package:system_theme/system_theme.dart';

late Isar isarInstance;

void main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive (for preferences)
  await Hive.initFlutter();
  await Hive.openBox('preferences');

  // Initialize Isar (for database)
  final dir = await getApplicationDocumentsDirectory();
  isarInstance = await Isar.open([SeleneThemeSchema], directory: dir.path);
  // isarInstance = await StorageProvider().initDB(null, inspector: kDebugMode);

  // Load accent color (so it can't be wrong on first run)
  await SystemTheme.accentColor.load();

  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  MainApp({super.key});

  final _seleneRouter = SeleneRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appearancePrefs = ref.watch(appearancePreferencesProvider);

    // Handle theming
    return SystemThemeBuilder(
      builder: (context, accent) {
        // Add dynamic theme
        final dynamicTheme = SeleneTheme(
          id: 'dynamic',
          name: 'Dynamic',
          category: ThemeCategory.system,
          primary: accent.accent.hex,
        );
        /*final dynamicID = */
        isarInstance.writeTxnSync(() {
          return isarInstance.seleneThemes.putSync(dynamicTheme);
        });
        // All all built-in themes
        isarInstance.writeTxnSync(() {
          for (final theme in themes.values) {
            // if (isarInstance.seleneThemes.getSync(theme.id.id) != null) {
            //   continue;
            // }
            isarInstance.seleneThemes.putSync(theme);
          }
        });

        final einkMode = appearancePrefs.einkMode.get();
        final contrastLevel = appearancePrefs.contrastLevel.get();
        final blendLevel = appearancePrefs.blendLevel.get();
        final usePureBlack = appearancePrefs.usePureBlack.get();
        // Isar Themes
        final themeID = einkMode ? 'monochrome' : appearancePrefs.themeID.get();
        SeleneTheme? selectedTheme =
            themeID == 'dynamic'
                ? dynamicTheme
                : isarInstance.seleneThemes.getSync(fastHash(themeID));
        if (selectedTheme == null) {
          appearancePrefs.themeID.set('system');
          selectedTheme = isarInstance.seleneThemes.getSync('system'.id);
        }

        // Handle brightness for system icons
        // final appBrightness = calculateBrightness(
        //   context,
        //   appearancePrefs.themeMode.get(),
        // );
        SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.edgeToEdge,
          overlays: [SystemUiOverlay.bottom],
        );
        // SystemChrome.setSystemUIOverlayStyle(
        //   calculateOverlayStyle(
        //     context,
        //     appBrightness,
        //     ref.watch(bannersActiveProvider),
        //   ),
        // );

        return MaterialApp.router(
          themeMode: appearancePrefs.themeMode.get(),
          theme: selectedTheme?.light(
            contrastLevel: contrastLevel,
            blendLevel: blendLevel,
            einkMode: einkMode,
          ),
          darkTheme: selectedTheme?.dark(
            contrastLevel: contrastLevel,
            blendLevel: blendLevel,
            usePureBlack: usePureBlack,
            einkMode: einkMode,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Selene',
          builder: (context, child) {
            return ResponsiveBreakpoints.builder(
              child: BannerFrame(child: child!),
              breakpoints: [
                const Breakpoint(start: 0, end: 600, name: COMPACT),
                const Breakpoint(start: 600, end: 839, name: MEDIUM),
                const Breakpoint(start: 840, end: 1199, name: EXPANDED),
                const Breakpoint(start: 1200, end: 1599, name: LARGE),
                const Breakpoint(
                  start: 1600,
                  end: double.infinity,
                  name: EXTRA_LARGE,
                ),
              ],
            );
          },
          routerConfig: _seleneRouter.config(
            navigatorObservers: () => [AutoRouteObserver()],
          ),
        );
      },
    );
  }
}
