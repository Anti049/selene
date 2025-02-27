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

  Preference<bool> get einkMode =>
      _preferences.getBool('eink_mode', defaultValue: false);
}

@riverpod
AppearancePreferences appearancePreferences(Ref ref) =>
    AppearancePreferences(ref.watch(preferencesProvider));
