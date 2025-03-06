import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'advanced_preferences.g.dart';

class AdvancedPreferences {
  AdvancedPreferences(this._preferences);
  final PreferenceStore _preferences;

  Preference<bool> get showDebugInfo =>
      _preferences.getBool('show_debug_info', defaultValue: false);

  Preference<bool> get showExperimentalFeatures =>
      _preferences.getBool('show_experimental_features', defaultValue: false);

  Preference<bool> get showHiddenFeatures =>
      _preferences.getBool('show_hidden_features', defaultValue: false);
}

@riverpod
AdvancedPreferences advancedPreferences(Ref ref) =>
    AdvancedPreferences(ref.watch(preferencesProvider));
