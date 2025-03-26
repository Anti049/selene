import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Theme data extensions
extension ThemeDataExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get scheme => theme.colorScheme;
  TextTheme get text => theme.textTheme;
}

// Brightness utilities
Brightness calculateBrightness(BuildContext context, ThemeMode themeMode) {
  // If theme mode is System, return system brightness
  if (themeMode == ThemeMode.system) {
    return MediaQuery.of(context).platformBrightness;
  }
  // If theme mode is Light, return light brightness
  // If theme mode is Dark, return dark brightness
  return themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
}

extension Invert on Brightness {
  Brightness get invert =>
      this == Brightness.dark ? Brightness.light : Brightness.dark;
}

SystemUiOverlayStyle calculateOverlayStyle(
  BuildContext context,
  Brightness brightness,
  bool bannersActive,
) {
  final statusBarColor = context.scheme.surfaceTint.withValues(alpha: 0.002);
  final iconBrightness = brightness.invert;
  final statusBrightness =
      !bannersActive ? iconBrightness : iconBrightness.invert;
  return SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
    statusBarIconBrightness: statusBrightness,
    systemNavigationBarColor: context.scheme.surfaceContainer.withValues(
      alpha: 0.75,
    ),
    systemNavigationBarIconBrightness: iconBrightness,
  );
}
