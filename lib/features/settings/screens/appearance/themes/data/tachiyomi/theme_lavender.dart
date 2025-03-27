import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeLavender = SeleneTheme.create(
  id: 'lavender',
  name: 'Lavender',
  category: ThemeCategory.tachiyomi,
  primary: Color(0xFF7B46AF).hex,
  secondary: Color(0xFF7B46AF).hex,
  tertiary: Color(0xFFEDE2FF).hex,
  neutral: Color(0xFFEDE2FF).hex,
  primaryDark: Color(0xFFA177FF).hex,
  secondaryDark: Color(0xFFA177FF).hex,
  tertiaryDark: Color(0xFF5E25E1).hex,
  neutralDark: Color(0xFF111129).hex,
  variant: FlexSchemeVariant.candyPop,
);
