import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';

part 'appearance_preferences.g.dart';

class AppearancePreferences {
  AppearancePreferences(this._preferences);
  final PreferenceStore _preferences;

  Preference<ThemeMode> get themeMode =>
      _preferences.getEnum('theme_mode', ThemeMode.system, ThemeMode.values);

  Preference<String> get themeName =>
      _preferences.getString('theme_name', defaultValue: 'system');

  Preference<double> get contrastLevel =>
      _preferences.getDouble('contrast_level', defaultValue: 0.0);

  Preference<double> get blendLevel =>
      _preferences.getDouble('blend_level', defaultValue: 6.0);

  Preference<bool> get einkMode =>
      _preferences.getBool('eink_mode', defaultValue: false);

  Preference<bool> get usePureBlack =>
      _preferences.getBool('use_pure_black', defaultValue: false);
}

@riverpod
AppearancePreferences appearancePreferences(Ref ref) =>
    AppearancePreferences(ref.watch(preferencesProvider));
