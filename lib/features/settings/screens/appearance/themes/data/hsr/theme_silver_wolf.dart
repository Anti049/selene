import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeSilverWolf = SeleneTheme.create(
  id: 'silver_wolf',
  name: 'Silver Wolf',
  category: ThemeCategory.hsr,
  primary: Color(0xFFBE8FF6).hex,
  secondary: Color(0xFF99B2F4).hex,
  tertiary: Color(0xFFE96AB8).hex,
  error: Color(0xFFFF5555).hex,
  neutral: Color(0xFF3E3550).hex,
  variant: FlexSchemeVariant.content,
);
