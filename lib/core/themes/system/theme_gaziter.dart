import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

final themeGaziter = SeleneTheme.create(
  id: 'gaziter',
  name: 'Gaziter',
  category: ThemeCategory.system,
  primary: Color(0xFF48F7BD).hex,
  secondary: Color(0xFFC193FF).hex,
  tertiary: Color(0xFF54A5B6).hex,
  error: Color(0xFFFF5555).hex,
  neutral: Color(0xFF04485F).hex,
  variant: FlexSchemeVariant.vibrant,
);
