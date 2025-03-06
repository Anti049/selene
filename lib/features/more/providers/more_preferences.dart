import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'more_preferences.g.dart';

class MorePreferences {
  MorePreferences(this._preferences);
  final PreferenceStore _preferences;

  Preference<bool> get downloadedOnly =>
      _preferences.getBool("downloadedOnly", defaultValue: false);

  Preference<bool> get incognitoMode =>
      _preferences.getBool("incognitoMode", defaultValue: false);
}

@riverpod
MorePreferences morePreferences(Ref ref) =>
    MorePreferences(ref.watch(preferencesProvider));
