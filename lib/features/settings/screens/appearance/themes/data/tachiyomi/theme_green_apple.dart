import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeGreenApple = SeleneTheme.create(
  id: 'green_apple',
  name: 'Green Apple',
  category: ThemeCategory.tachiyomi,
  primary: Color(0xFF188140).hex,
  secondary: Color(0xFF188140).hex,
  tertiary: Color(0xFFD33131).hex,
  neutral: Color(0xFF5D5F5B).hex,
  variant: FlexSchemeVariant.candyPop,
);
