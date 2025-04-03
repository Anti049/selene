import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeStrawberry = SeleneTheme.create(
  id: 'strawberry',
  name: 'Strawberry',
  category: ThemeCategory.tachiyomi,
  primary: Color(0xFFED4A65).hex,
  secondary: Color(0xFFED4A65).hex,
  tertiary: Color(0xFF775930).hex,
  neutral: Color(0xFF655C5C).hex,
  variant: FlexSchemeVariant.candyPop,
);
