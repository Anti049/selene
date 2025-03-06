import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_preferences.g.dart';

class LibraryPreferences {
  LibraryPreferences(this._preferences);
  final PreferenceStore _preferences;
}

@riverpod
LibraryPreferences libraryPreferences(Ref ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
