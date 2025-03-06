import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'about_preferences.g.dart';

class AboutPreferences {
  AboutPreferences(this._preferences);
  final PreferenceStore _preferences;
}

@riverpod
AboutPreferences aboutPreferences(Ref ref) =>
    AboutPreferences(ref.watch(preferencesProvider));
