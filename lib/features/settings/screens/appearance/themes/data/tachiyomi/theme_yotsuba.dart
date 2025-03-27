import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeYotsuba = SeleneTheme.create(
  id: 'yotsuba',
  name: 'Yotsuba',
  category: ThemeCategory.tachiyomi,
  // Colors
  // ~ Primary #AE3200
  // ~ Secondary #AE3200
  // ~ Tertiary #6B5E2F
  // ~ Neutral #655C5A
  primary: Color(0xFFAE3200).hex,
  secondary: Color(0xFFAE3200).hex,
  tertiary: Color(0xFF6B5E2F).hex,
  neutral: Color(0xFF655C5A).hex,
);
