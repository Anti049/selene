import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:selene/features/banners/providers/banners_provider.dart';
import 'package:selene/features/banners/widgets/banner_frame.dart';
import 'package:selene/features/settings/appearance/providers/appearance_preferences.dart';
import 'package:selene/router/router.dart' show SeleneRouter;
import 'package:selene/utils/theming.dart';

late Isar isarInstance;

void main() async {
  // Ensure plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive (for preferences)
  await Hive.initFlutter();
  await Hive.openBox('preferences');

  // Initialize Isar (for database)
  // isarInstance = await StorageProvider().initDB(null, inspector: kDebugMode);

  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  MainApp({super.key});

  final _seleneRouter = SeleneRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appearancePrefs = ref.watch(appearancePreferencesProvider);

    const sourceColor = Color(0xFF3776D0);

    // Handle brightness for system icons
    final appBrightness = calculateBrightness(
      context,
      appearancePrefs.themeMode.get(),
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      calculateOverlayStyle(
        context,
        appBrightness,
        ref.watch(bannersActiveProvider),
      ),
    );

    return MaterialApp.router(
      themeMode: appearancePrefs.themeMode.get(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: sourceColor,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: sourceColor,
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Selene',
      builder: (context, child) {
        return BannerFrame(child: child!);
      },
      routerConfig: _seleneRouter.config(),
    );
  }
}
