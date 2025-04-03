import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/custom_colors.dart';
import 'package:selene/utils/isar.dart';

part 'theme.freezed.dart';
part 'theme.g.dart';

enum ThemeCategory {
  system('System'),
  custom('Custom'),
  site('Sites'),
  tachiyomi('Tachiyomi'),
  flex('Flex Color Schemes'),
  hsr('Honkai: Star Rail');

  const ThemeCategory(this.name);

  final String name;
}

// @collection
// class SeleneTheme {
//   Id id = Isar.autoIncrement;
//   late String primary;
//   String? secondary;
//   String? tertiary;
//   String? error;
//   String? neutral;
//   String? neutralVariant;
//   @enumerated
//   FlexSchemeVariant variant = FlexSchemeVariant.tonalSpot;
// }

@embedded
class SerializableColorScheme {
  @enumerated
  @Default(Brightness.light)
  Brightness brightness;
  String? primary;
  String? onPrimary;
  String? primaryContainer;
  String? onPrimaryContainer;
  String? primaryFixed;
  String? primaryFixedDim;
  String? onPrimaryFixed;
  String? onPrimaryFixedVariant;
  String? secondary;
  String? onSecondary;
  String? secondaryContainer;
  String? onSecondaryContainer;
  String? secondaryFixed;
  String? secondaryFixedDim;
  String? onSecondaryFixed;
  String? onSecondaryFixedVariant;
  String? tertiary;
  String? onTertiary;
  String? tertiaryContainer;
  String? onTertiaryContainer;
  String? tertiaryFixed;
  String? tertiaryFixedDim;
  String? onTertiaryFixed;
  String? onTertiaryFixedVariant;
  String? error;
  String? onError;
  String? errorContainer;
  String? onErrorContainer;
  String? surface;
  String? onSurface;
  String? surfaceDim;
  String? surfaceBright;
  String? surfaceContainerLowest;
  String? surfaceContainerLow;
  String? surfaceContainer;
  String? surfaceContainerHigh;
  String? surfaceContainerHighest;
  String? onSurfaceVariant;
  String? outline;
  String? outlineVariant;
  String? shadow;
  String? scrim;
  String? inverseSurface;
  String? onInverseSurface;
  String? inversePrimary;
  String? surfaceTint;

  SerializableColorScheme({
    this.brightness = Brightness.light,
    this.primary,
    this.onPrimary,
    this.primaryContainer,
    this.onPrimaryContainer,
    this.primaryFixed,
    this.primaryFixedDim,
    this.onPrimaryFixed,
    this.onPrimaryFixedVariant,
    this.secondary,
    this.onSecondary,
    this.secondaryContainer,
    this.onSecondaryContainer,
    this.secondaryFixed,
    this.secondaryFixedDim,
    this.onSecondaryFixed,
    this.onSecondaryFixedVariant,
    this.tertiary,
    this.onTertiary,
    this.tertiaryContainer,
    this.onTertiaryContainer,
    this.tertiaryFixed,
    this.tertiaryFixedDim,
    this.onTertiaryFixed,
    this.onTertiaryFixedVariant,
    this.error,
    this.onError,
    this.errorContainer,
    this.onErrorContainer,
    this.surface,
    this.onSurface,
    this.surfaceDim,
    this.surfaceBright,
    this.surfaceContainerLowest,
    this.surfaceContainerLow,
    this.surfaceContainer,
    this.surfaceContainerHigh,
    this.surfaceContainerHighest,
    this.onSurfaceVariant,
    this.outline,
    this.outlineVariant,
    this.shadow,
    this.scrim,
    this.inverseSurface,
    this.onInverseSurface,
    this.inversePrimary,
    this.surfaceTint,
  });

  factory SerializableColorScheme.fromColorScheme(ColorScheme scheme) {
    return SerializableColorScheme(
      brightness: scheme.brightness,
      primary: scheme.primary.hex,
      onPrimary: scheme.onPrimary.hex,
      primaryContainer: scheme.primaryContainer.hex,
      onPrimaryContainer: scheme.onPrimaryContainer.hex,
      primaryFixed: scheme.primaryFixed.hex,
      primaryFixedDim: scheme.primaryFixedDim.hex,
      onPrimaryFixed: scheme.onPrimaryFixed.hex,
      onPrimaryFixedVariant: scheme.onPrimaryFixedVariant.hex,
      secondary: scheme.secondary.hex,
      onSecondary: scheme.onSecondary.hex,
      secondaryContainer: scheme.secondaryContainer.hex,
      onSecondaryContainer: scheme.onSecondaryContainer.hex,
      secondaryFixed: scheme.secondaryFixed.hex,
      secondaryFixedDim: scheme.secondaryFixedDim.hex,
      onSecondaryFixed: scheme.onSecondaryFixed.hex,
      onSecondaryFixedVariant: scheme.onSecondaryFixedVariant.hex,
      tertiary: scheme.tertiary.hex,
      onTertiary: scheme.onTertiary.hex,
      tertiaryContainer: scheme.tertiaryContainer.hex,
      onTertiaryContainer: scheme.onTertiaryContainer.hex,
      tertiaryFixed: scheme.tertiaryFixed.hex,
      tertiaryFixedDim: scheme.tertiaryFixedDim.hex,
      onTertiaryFixed: scheme.onTertiaryFixed.hex,
      onTertiaryFixedVariant: scheme.onTertiaryFixedVariant.hex,
      error: scheme.error.hex,
      onError: scheme.onError.hex,
      errorContainer: scheme.errorContainer.hex,
      onErrorContainer: scheme.onErrorContainer.hex,
      surface: scheme.surface.hex,
      onSurface: scheme.onSurface.hex,
      surfaceDim: scheme.surfaceDim.hex,
      surfaceBright: scheme.surfaceBright.hex,
      surfaceContainerLowest: scheme.surfaceContainerLowest.hex,
      surfaceContainerLow: scheme.surfaceContainerLow.hex,
      surfaceContainer: scheme.surfaceContainer.hex,
      surfaceContainerHigh: scheme.surfaceContainerHigh.hex,
      surfaceContainerHighest: scheme.surfaceContainerHighest.hex,
      onSurfaceVariant: scheme.onSurfaceVariant.hex,
      outline: scheme.outline.hex,
      outlineVariant: scheme.outlineVariant.hex,
      shadow: scheme.shadow.hex,
      scrim: scheme.scrim.hex,
      inverseSurface: scheme.inverseSurface.hex,
      onInverseSurface: scheme.onInverseSurface.hex,
      inversePrimary: scheme.inversePrimary.hex,
      surfaceTint: scheme.surfaceTint.hex,
    );
  }

  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary?.toColor ?? Color(0xff6200ee),
      onPrimary: onPrimary?.toColor ?? Colors.white,
      primaryContainer: primaryContainer?.toColor,
      onPrimaryContainer: onPrimaryContainer?.toColor,
      primaryFixed: primaryFixed?.toColor,
      primaryFixedDim: primaryFixedDim?.toColor,
      onPrimaryFixed: onPrimaryFixed?.toColor,
      onPrimaryFixedVariant: onPrimaryFixedVariant?.toColor,
      secondary: secondary?.toColor ?? Color(0xff03dac6),
      onSecondary: onSecondary?.toColor ?? Colors.black,
      secondaryContainer: secondaryContainer?.toColor,
      onSecondaryContainer: onSecondaryContainer?.toColor,
      secondaryFixed: secondaryFixed?.toColor,
      secondaryFixedDim: secondaryFixedDim?.toColor,
      onSecondaryFixed: onSecondaryFixed?.toColor,
      onSecondaryFixedVariant: onSecondaryFixedVariant?.toColor,
      tertiary: tertiary?.toColor,
      onTertiary: onTertiary?.toColor,
      tertiaryContainer: tertiaryContainer?.toColor,
      onTertiaryContainer: onTertiaryContainer?.toColor,
      tertiaryFixed: tertiaryFixed?.toColor,
      tertiaryFixedDim: tertiaryFixedDim?.toColor,
      onTertiaryFixed: onTertiaryFixed?.toColor,
      onTertiaryFixedVariant: onTertiaryFixedVariant?.toColor,
      error: error?.toColor ?? Color(0xFFb00020),
      onError: onError?.toColor ?? Colors.white,
      errorContainer: errorContainer?.toColor,
      onErrorContainer: onErrorContainer?.toColor,
      surface: surface?.toColor ?? Colors.white,
      onSurface: onSurface?.toColor ?? Colors.black,
      surfaceDim: surfaceDim?.toColor,
      surfaceBright: surfaceBright?.toColor,
      surfaceContainerLowest: surfaceContainerLowest?.toColor,
      surfaceContainerLow: surfaceContainerLow?.toColor,
      surfaceContainer: surfaceContainer?.toColor,
      surfaceContainerHigh: surfaceContainerHigh?.toColor,
      surfaceContainerHighest: surfaceContainerHighest?.toColor,
      onSurfaceVariant: onSurfaceVariant?.toColor,
      outline: outline?.toColor,
      outlineVariant: outlineVariant?.toColor,
      shadow: shadow?.toColor,
      scrim: scrim?.toColor,
      inverseSurface: inverseSurface?.toColor,
      onInverseSurface: onInverseSurface?.toColor,
      inversePrimary: inversePrimary?.toColor,
      surfaceTint: surfaceTint?.toColor,
    );
  }

  factory SerializableColorScheme.fromJson(Map<String, dynamic> json) {
    return SerializableColorScheme(
      brightness: json['brightness'] as Brightness,
      primary: json['primary'],
      onPrimary: json['onPrimary'],
      primaryContainer: json['primaryContainer'],
      onPrimaryContainer: json['onPrimaryContainer'],
      primaryFixed: json['primaryFixed'],
      primaryFixedDim: json['primaryFixedDim'],
      onPrimaryFixed: json['onPrimaryFixed'],
      onPrimaryFixedVariant: json['onPrimaryFixedVariant'],
      secondary: json['secondary'],
      onSecondary: json['onSecondary'],
      secondaryContainer: json['secondaryContainer'],
      onSecondaryContainer: json['onSecondaryContainer'],
      secondaryFixed: json['secondaryFixed'],
      secondaryFixedDim: json['secondaryFixedDim'],
      onSecondaryFixed: json['onSecondaryFixed'],
      onSecondaryFixedVariant: json['onSecondaryFixedVariant'],
      tertiary: json['tertiary'],
      onTertiary: json['onTertiary'],
      tertiaryContainer: json['tertiaryContainer'],
      onTertiaryContainer: json['onTertiaryContainer'],
      tertiaryFixed: json['tertiaryFixed'],
      tertiaryFixedDim: json['tertiaryFixedDim'],
      onTertiaryFixed: json['onTertiaryFixed'],
      onTertiaryFixedVariant: json['onTertiaryFixedVariant'],
      error: json['error'],
      onError: json['onError'],
      errorContainer: json['errorContainer'],
      onErrorContainer: json['onErrorContainer'],
      surface: json['surface'],
      onSurface: json['onSurface'],
      surfaceDim: json['surfaceDim'],
      surfaceBright: json['surfaceBright'],
      surfaceContainerLowest: json['surfaceContainerLowest'],
      surfaceContainerLow: json['surfaceContainerLow'],
      surfaceContainer: json['surfaceContainer'],
      surfaceContainerHigh: json['surfaceContainerHigh'],
      surfaceContainerHighest: json['surfaceContainerHighest'],
      onSurfaceVariant: json['onSurfaceVariant'],
      outline: json['outline'],
      outlineVariant: json['outlineVariant'],
      shadow: json['shadow'],
      scrim: json['scrim'],
      inverseSurface: json['inverseSurface'],
      onInverseSurface: json['onInverseSurface'],
      inversePrimary: json['inversePrimary'],
      surfaceTint: json['surfaceTint'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'primary': primary, 'brightness': brightness};
  }
}

@freezed
@Collection(ignore: {'copyWith'})
@Name('themes')
class SeleneTheme with _$SeleneTheme {
  const SeleneTheme._();

  const factory SeleneTheme({
    @Index(unique: true) required String id,
    required String name,
    @enumerated @Default(ThemeCategory.custom) ThemeCategory category,
    String? primary,
    String? secondary,
    String? tertiary,
    String? error,
    String? neutral,
    String? neutralVariant,
    String? primaryDark,
    String? secondaryDark,
    String? tertiaryDark,
    String? errorDark,
    String? neutralDark,
    String? neutralVariantDark,
    SerializableColorScheme? lightScheme,
    SerializableColorScheme? darkScheme,
    @enumerated @Default(FlexSchemeVariant.tonalSpot) FlexSchemeVariant variant,
    @Default(true) bool selectable,
  }) = _SeleneTheme;

  factory SeleneTheme.create({
    required String id,
    required String name,
    ThemeCategory category = ThemeCategory.custom,
    String? primary,
    String? secondary,
    String? tertiary,
    String? error,
    String? neutral,
    String? neutralVariant,
    String? primaryDark,
    String? secondaryDark,
    String? tertiaryDark,
    String? errorDark,
    String? neutralDark,
    String? neutralVariantDark,
    SerializableColorScheme? lightScheme,
    SerializableColorScheme? darkScheme,
    FlexSchemeVariant variant = FlexSchemeVariant.tonalSpot,
    bool selectable = true,
  }) {
    assert(
      primary != null || (lightScheme != null && darkScheme != null),
      'Either primary or both lightScheme and darkScheme must be supplied.',
    );
    return SeleneTheme(
      id: id,
      name: name,
      category: category,
      primary: primary,
      secondary: secondary,
      tertiary: tertiary,
      error: error,
      neutral: neutral,
      neutralVariant: neutralVariant,
      primaryDark: primaryDark,
      secondaryDark: secondaryDark,
      tertiaryDark: tertiaryDark,
      errorDark: errorDark,
      neutralDark: neutralDark,
      neutralVariantDark: neutralVariantDark,
      lightScheme: lightScheme,
      darkScheme: darkScheme,
      variant: variant,
      selectable: selectable,
    );
  }

  Id get isarID => fastHash(id);

  factory SeleneTheme.fromJson(Map<String, dynamic> json) =>
      _$SeleneThemeFromJson(json);

  ColorScheme getScheme({
    required Brightness brightness,
    required double blendLevel,
    required double contrastLevel,
  }) {
    final primaryColor =
        (primary != null && primaryDark != null)
            ? brightness == Brightness.light
                ? primary?.toColor
                : primaryDark?.toColor
            : primary?.toColor;
    final secondaryColor =
        (secondary != null && secondaryDark != null)
            ? brightness == Brightness.light
                ? secondary?.toColor
                : secondaryDark?.toColor
            : secondary?.toColor;
    final tertiaryColor =
        (tertiary != null && tertiaryDark != null)
            ? brightness == Brightness.light
                ? tertiary?.toColor
                : tertiaryDark?.toColor
            : tertiary?.toColor;
    final errorColor =
        (error != null && errorDark != null)
            ? brightness == Brightness.light
                ? error?.toColor
                : errorDark?.toColor
            : error?.toColor;
    final neutralColor =
        (neutral != null && neutralDark != null)
            ? brightness == Brightness.light
                ? neutral?.toColor
                : neutralDark?.toColor
            : neutral?.toColor;
    final neutralVariantColor =
        (neutralVariant != null && neutralVariantDark != null)
            ? brightness == Brightness.light
                ? neutralVariant?.toColor
                : neutralVariantDark?.toColor
            : neutralVariant?.toColor;

    if (primaryColor != null) {
      return SeedColorScheme.fromSeeds(
        brightness: brightness,
        primaryKey: primaryColor,
        secondaryKey: secondaryColor,
        tertiaryKey: tertiaryColor,
        errorKey: errorColor,
        neutralKey: neutralColor,
        neutralVariantKey: neutralVariantColor,
        variant: variant,
        useExpressiveOnContainerColors: true,
        respectMonochromeSeed: true,
        contrastLevel: contrastLevel,
      );
    }
    switch (brightness) {
      case Brightness.light:
        return lightScheme?.toColorScheme() ?? FlexColorScheme.light().toScheme;
      case Brightness.dark:
        return darkScheme?.toColorScheme() ?? FlexColorScheme.dark().toScheme;
    }
  }

  ThemeData light({
    double blendLevel = 6.0,
    double contrastLevel = 0.0,
    FlexSchemeVariant? variant,
    String? appFont,
    bool einkMode = false,
    CustomColors? customColors,
  }) {
    contrastLevel = einkMode ? 1.0 : contrastLevel;
    final blend = einkMode ? 0 : blendLevel.toInt();
    // Create color scheme
    final lightScheme = getScheme(
      brightness: Brightness.light,
      blendLevel: blendLevel,
      contrastLevel: contrastLevel,
    );

    final extendedColors = customColors?.harmonized(lightScheme.primary);

    // if (this.lightScheme != null) {
    //   return ThemeData(brightness: Brightness.light, colorScheme: lightScheme);
    // }

    return FlexThemeData.light(
      useMaterial3: true,
      colorScheme: lightScheme,
      variant: variant ?? this.variant,
      surfaceMode: einkMode ? FlexSurfaceMode.level : FlexSurfaceMode.level,
      blendLevel: blend,
      appBarStyle: FlexAppBarStyle.scaffoldBackground,
      subThemesData: FlexSubThemesData(
        interactionEffects: true,
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        bottomNavigationBarBackgroundSchemeColor: SchemeColor.surfaceContainer,
        bottomAppBarSchemeColor: SchemeColor.surfaceContainer,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
        checkboxSchemeColor: SchemeColor.onSurface,
        textButtonRadius: 8.0,
        filledButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
        dialogRadius: 8.0,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
      extensions: [if (extendedColors != null) extendedColors],
    );
  }

  ThemeData dark({
    double blendLevel = 6.0,
    double contrastLevel = 0.0,
    FlexSchemeVariant? variant,
    String? appFont,
    bool usePureBlack = false,
    bool einkMode = false,
    CustomColors? customColors,
  }) {
    contrastLevel = einkMode ? 1.0 : contrastLevel;
    final blend = einkMode ? 0 : blendLevel.toInt();

    // Create color scheme
    final darkScheme = getScheme(
      brightness: Brightness.dark,
      blendLevel: blendLevel,
      contrastLevel: contrastLevel,
    );

    final extendedColors = customColors?.harmonized(darkScheme.primary);

    // if (this.darkScheme != null) {
    //   return ThemeData(brightness: Brightness.dark, colorScheme: darkScheme);
    // }

    return FlexThemeData.dark(
      useMaterial3: true,
      colorScheme: darkScheme,
      variant: variant ?? this.variant,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: blend,
      darkIsTrueBlack: usePureBlack || einkMode,
      appBarStyle: FlexAppBarStyle.scaffoldBackground,
      subThemesData: FlexSubThemesData(
        interactionEffects: true,
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        // unselectedToggleIsColored: true,
        // appBarBackgroundSchemeColor:
        //     usePureBlack || einkMode ? SchemeColor.black : null,
        appBarBackgroundSchemeColor: SchemeColor.surfaceContainer,
        bottomNavigationBarBackgroundSchemeColor:
            usePureBlack || einkMode
                ? SchemeColor.surfaceDim
                : SchemeColor.surfaceContainer,
        bottomAppBarSchemeColor:
            usePureBlack || einkMode
                ? SchemeColor.surfaceDim
                : SchemeColor.surfaceContainer,
        bottomNavigationBarElevation: 8.0,
        menuPadding: EdgeInsets.all(0.0),
        menuSchemeColor: SchemeColor.surfaceContainerHigh,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
        checkboxSchemeColor: SchemeColor.onSurface,
        textButtonRadius: 8.0,
        filledButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
        dialogRadius: 8.0,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
      extensions: [if (extendedColors != null) extendedColors],
    );
  }
}
