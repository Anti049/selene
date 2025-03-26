import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/banners/providers/banners_provider.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/utils/theming.dart';

class ThemeScaffold extends ConsumerWidget {
  const ThemeScaffold({
    super.key,
    required this.body,
    this.primary = true,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.drawer,
  });

  final PreferredSizeWidget? appBar;
  final bool primary;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? drawer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appearancePrefs = ref.watch(appearancePreferencesProvider);

    // Handle brightness for system icons
    final appBrightness = calculateBrightness(
      context,
      appearancePrefs.themeMode.get(),
    );
    SystemChrome.setSystemUIOverlayStyle(
      calculateOverlayStyle(
        context,
        appBrightness,
        ref.watch(bannersActiveProvider),
      ),
    );

    return Scaffold(
      primary: primary,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      drawer: drawer,
    );
  }
}
