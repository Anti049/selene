import 'package:selene/data/datasources/local/preferences/preferences_service.dart';
import 'package:selene/domain/models/preference.dart';

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
