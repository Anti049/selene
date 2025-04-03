// lib/features/settings/providers/preference_provider.dart
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/common/services/preferences_service.dart'; // Import the service
import 'package:selene/features/settings/models/preference.dart';

part 'preference_provider.g.dart';

@riverpod
class Preferences extends _$Preferences {
  late PreferencesService _preferencesService;

  @override
  PreferenceStore build() {
    final box = Hive.box('preferences');
    _preferencesService = PreferencesService(box); // Use the service

    box.watch().listen((event) {
      // final logger = ref.read(loggingProvider);
      // Final output:
      // [INFO] Preferences changed
      //  - Keys: {key1, key2}
      //  - Values: {value1, value2}
      // final message = 'Preferences changed\n - Key: ${event.key}\n - Value: ${event.value}';
      // logger.d(message);
      notifyListeners();
    });
    return PreferenceStore(
      _preferencesService,
    ); // Return PreferenceStore with service
  }

  void notifyListeners() {
    state = PreferenceStore(_preferencesService);
  }
}

class PreferenceStore {
  final PreferencesService _preferencesService; // Use PreferencesService

  PreferenceStore(
    this._preferencesService,
  ); // Constructor now takes PreferencesService

  // Changed methods to use PreferencesService
  Preference<String> getString(String key, {String defaultValue = ''}) =>
      StringPreference(key, _preferencesService, defaultValue);

  Preference<int> getInt(String key, {int defaultValue = 0}) =>
      IntPreference(key, _preferencesService, defaultValue);

  Preference<bool> getBool(String key, {bool defaultValue = false}) =>
      BoolPreference(key, _preferencesService, defaultValue);

  Preference<double> getDouble(String key, {double defaultValue = 0.0}) =>
      DoublePreference(key, _preferencesService, defaultValue);

  Preference<Set<String>> getStringSet(
    String key, {
    Set<String> defaultValue = const {},
  }) => StringSetPreference(key, _preferencesService, defaultValue);

  Preference<T> getObject<T>(
    String key,
    T defaultValue,
    String Function(T) serializer,
    T Function(String) deserializer,
  ) => ObjectPreference(
    key,
    _preferencesService,
    defaultValue,
    serializer,
    deserializer,
  );

  Preference<Enum> getEnum<Enum>(
    String key,
    Enum defaultValue,
    Iterable<Enum> values,
  ) => EnumPreference<Enum>(key, _preferencesService, defaultValue, values);

  Preference<List<Enum>> getEnumList<Enum>(
    String key,
    List<Enum> defaultValue,
    Iterable<Enum> values,
  ) => EnumListPreference(key, _preferencesService, defaultValue, values);
}
