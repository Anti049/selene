import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/custom_colors.dart';
import 'package:selene/utils/isar.dart';

// Custom colors
extension CustomColorExtension on ThemeData {
  CustomColors get extended => extension<CustomColors>()!;
}

// Theme data extensions
extension ThemeDataExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  CustomColors get extended => theme.extended;
  ColorScheme get scheme => theme.colorScheme;
  TextTheme get text => theme.textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Brightness get brightness => theme.brightness;
}

extension ColorExtension on String {
  Color get color => Color(int.parse(this));
  Id get id => fastHash(this);
}

// Brightness utilities
Brightness calculateBrightness(BuildContext context, ThemeMode themeMode) {
  // If theme mode is System, return system brightness
  if (themeMode == ThemeMode.system) {
    return context.mediaQuery.platformBrightness;
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
