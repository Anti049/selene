import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeTidalWave = SeleneTheme.create(
  id: 'tidal_wave',
  name: 'Tidal Wave',
  category: ThemeCategory.tachiyomi,
  // Light
  // ~ Primary #006780
  // ~ Secondary #004152
  // ~ Tertiary #92f7bc
  // ~ Neutral #b6b5b8
  primary: Color(0xFF006780).hex,
  secondary: Color(0xFF004152).hex,
  tertiary: Color(0xFF92f7bc).hex,
  neutral: Color(0xFFb6b5b8).hex,
  // Dark
  // ~ Primary #004152
  // ~ Secondary #5ed4fc
  // ~ Tertiary #92f7bc
  // ~ Neutral #16151D
  primaryDark: Color(0xFF004152).hex,
  secondaryDark: Color(0xFF5ed4fc).hex,
  tertiaryDark: Color(0xFF92f7bc).hex,
  neutralDark: Color(0xFF16151D).hex,
);
