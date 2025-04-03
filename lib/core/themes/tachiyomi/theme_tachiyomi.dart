import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeTachiyomi = SeleneTheme.create(
  id: 'tachiyomi',
  name: 'Tachiyomi',
  category: ThemeCategory.tachiyomi,
  primary: Color(0xFF2979FF).hex,
  secondary: Color(0xFF2979FF).hex,
  tertiary: Color(0xFF47A84A).hex,
  neutral: Color(0xFF5E5E62).hex,
);
