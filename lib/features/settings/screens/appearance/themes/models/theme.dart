import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

part 'theme.freezed.dart';

enum ThemeCategory {
  system('System'),
  custom('Custom'),
  tachiyomi('Tachiyomi'),
  flex('Flex Color Schemes'),
  hsr('Honkai: Star Rail');

  const ThemeCategory(this.name);

  final String name;
}

@freezed
class AppTheme with _$AppTheme {
  const AppTheme._();
  const factory AppTheme({
    required String name,
    @Default(ThemeCategory.custom) ThemeCategory category,
    required Color primary,
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    Color? neutralVariant,
    @Default(FlexSchemeVariant.tonalSpot) FlexSchemeVariant variant,
  }) = _AppTheme;

  ColorScheme getScheme({
    required Brightness brightness,
    required double blendLevel,
    required double contrastLevel,
  }) {
    return SeedColorScheme.fromSeeds(
      brightness: brightness,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      neutralVariantKey: neutralVariant,
      variant: variant,
      useExpressiveOnContainerColors: true,
      respectMonochromeSeed: true,
      contrastLevel: contrastLevel,
    );
  }

  ThemeData light({
    double blendLevel = 6.0,
    double contrastLevel = 0.0,
    FlexSchemeVariant? variant,
    String? appFont,
    bool einkMode = false,
  }) {
    contrastLevel = einkMode ? 1.0 : contrastLevel;
    final blend = einkMode ? 0 : blendLevel.toInt();
    // Create color scheme
    final lightScheme = getScheme(
      brightness: Brightness.light,
      blendLevel: blendLevel,
      contrastLevel: contrastLevel,
    );

    return FlexThemeData.light(
      useMaterial3: true,
      colorScheme: lightScheme,
      variant: variant ?? this.variant,
      surfaceMode:
          einkMode
              ? FlexSurfaceMode.level
              : FlexSurfaceMode.highScaffoldLevelSurface,
      blendLevel: blend,
      subThemesData: FlexSubThemesData(
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        unselectedToggleIsColored: true,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
        checkboxSchemeColor: SchemeColor.onSurface,
        textButtonRadius: 8.0,
        filledButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
    );
  }

  ThemeData dark({
    double blendLevel = 6.0,
    double contrastLevel = 0.0,
    FlexSchemeVariant? variant,
    String? appFont,
    bool usePureBlack = false,
    bool einkMode = false,
  }) {
    contrastLevel = einkMode ? 1.0 : contrastLevel;
    final blend = einkMode ? 0 : blendLevel.toInt();

    // Create color scheme
    final darkScheme = getScheme(
      brightness: Brightness.dark,
      blendLevel: blendLevel,
      contrastLevel: contrastLevel,
    );

    return FlexThemeData.dark(
      useMaterial3: true,
      colorScheme: darkScheme,
      variant: variant ?? this.variant,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: blend,
      darkIsTrueBlack: usePureBlack || einkMode,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        unselectedToggleIsColored: true,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
        checkboxSchemeColor: SchemeColor.onSurface,
        textButtonRadius: 8.0,
        filledButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
    );
  }
}
