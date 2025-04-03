import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:selene/core/constants/layout_constants.dart';
import 'package:selene/data/models/author.dart';
import 'package:selene/data/models/tag.dart';
import 'package:selene/data/models/work.dart';
import 'package:selene/features/banners/widgets/banner_frame.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/core/themes/themes.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/custom_colors.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';
import 'package:selene/router/router.dart' show SeleneRouter;
import 'package:selene/utils/isar.dart';
import 'package:selene/utils/theming.dart';
import 'package:system_theme/system_theme.dart';
// import 'package:drift/native.dart';
// import 'package:path/path.dart' as p;

late Isar isarInstance;

// Future<AppDatabase> _initDatabase() async {
//   final documentsDirectory = await getApplicationDocumentsDirectory();
//   final dbPath = p.join(documentsDirectory.path, 'app.db');
//   final database = AppDatabase(NativeDatabase(File(dbPath)));
//   return database;
// }

void main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive (for preferences)
  await Hive.initFlutter();
  await Hive.openBox('preferences');

  // Initialize Isar (for database)
  final dir = await getApplicationDocumentsDirectory();
  isarInstance = await Isar.open([
    SeleneThemeSchema,
    WorkSchema,
    AuthorSchema,
    TagSchema,
  ], directory: dir.path);
  // isarInstance = await StorageProvider().initDB(null, inspector: kDebugMode);

  // Initialize Drift
  // final database = await _initDatabase();

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

        // Custom colors
        CustomColors extendedLightColors = const CustomColors(
          info: Color(0xFF036A96),
          success: Color(0xFF14710A),
          warning: Color(0xFFA34D14),
          alert: Color(0xFF846E15),
          character: Color(0xFF644AC9),
          romance: Color(0xFFA3144D),
        );
        CustomColors extendedDarkColors = const CustomColors(
          info: Color(0xFF80FFEA),
          success: Color(0xFF8AFF80),
          warning: Color(0xFFFFCA80),
          alert: Color(0xFFFFFF80),
          character: Color(0xFF9580FF),
          romance: Color(0xFFFF80BF),
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
            customColors: extendedLightColors,
          ),
          darkTheme: selectedTheme?.dark(
            contrastLevel: contrastLevel,
            blendLevel: blendLevel,
            usePureBlack: usePureBlack,
            einkMode: einkMode,
            customColors: extendedDarkColors,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Selene',
          builder: (context, child) {
            return ResponsiveBreakpoints.builder(
              child: BannerFrame(child: child!),
              breakpoints: [
                const Breakpoint(start: 0, end: 600, name: kCompact),
                const Breakpoint(start: 600, end: 839, name: kMedium),
                const Breakpoint(start: 840, end: 1199, name: kExpanded),
                const Breakpoint(start: 1200, end: 1599, name: kLarge),
                const Breakpoint(
                  start: 1600,
                  end: double.infinity,
                  name: kExtraLarge,
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
