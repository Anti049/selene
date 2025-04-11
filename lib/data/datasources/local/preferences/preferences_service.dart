// lib/common/services/preferences_service.dart
import 'package:hive_ce_flutter/hive_flutter.dart';

class PreferencesService {
  final Box _box;

  PreferencesService(this._box);

  // Generic method to get any type from Hive
  T? getData<T>(String key, {T? defaultValue}) {
    return _box.get(key, defaultValue: defaultValue);
  }

  // Generic method to save any type to Hive
  Future<void> saveData<T>(String key, T value) async {
    await _box.put(key, value);
  }

  // Specific methods for common data types
  // - String
  String getString(String key, {String defaultValue = ''}) {
    return getData<String>(key, defaultValue: defaultValue) ?? defaultValue;
  }

  Future<void> setString(String key, String value) async {
    await saveData<String>(key, value);
  }

  // - int
  int getInt(String key, {int defaultValue = 0}) {
    return getData<int>(key, defaultValue: defaultValue) ?? defaultValue;
  }

  Future<void> setInt(String key, int value) async {
    await saveData<int>(key, value);
  }

  // - bool
  bool getBool(String key, {bool defaultValue = false}) {
    return getData<bool>(key, defaultValue: defaultValue) ?? defaultValue;
  }

  Future<void> setBool(String key, bool value) async {
    await saveData<bool>(key, value);
  }

  // - double
  double getDouble(String key, {double defaultValue = 0.0}) {
    return getData<double>(key, defaultValue: defaultValue) ?? defaultValue;
  }

  Future<void> setDouble(String key, double value) async {
    await saveData<double>(key, value);
  }

  // - List<String>
  List<String> getStringList(
    String key, {
    List<String> defaultValue = const [],
  }) {
    return getData<List<String>>(key, defaultValue: defaultValue) ??
        defaultValue;
  }

  Future<void> setStringList(String key, List<String> value) async {
    await saveData<List<String>>(key, value);
  }

  // - Set<String>
  Set<String> getStringSet(String key, {Set<String> defaultValue = const {}}) {
    return getData<Set<String>>(key, defaultValue: defaultValue) ??
        defaultValue;
  }

  Future<void> setStringSet(String key, Set<String> value) async {
    await saveData<Set<String>>(key, value);
  }

  // - Enum
  Enum getEnum<Enum>(String key, Enum defaultValue, Iterable<Enum> values) {
    final value = getData<String>(key, defaultValue: defaultValue.toString());
    return values.firstWhere(
      (element) => element.toString() == value,
      orElse: () => defaultValue,
    );
  }

  Future<void> setEnum<Enum>(String key, Enum value) async {
    await saveData<String>(key, value.toString());
  }

  // - List<Enum>
  List<Enum> getEnumList<Enum>(
    String key,
    List<Enum> defaultValue,
    Iterable<Enum> values,
  ) {
    final serialized = getData<List<String>>(
      key,
      defaultValue: defaultValue.map((e) => e.toString()).toList(),
    );
    return serialized
            ?.map(
              (e) => values.firstWhere((element) => element.toString() == e),
            )
            .toList() ??
        defaultValue;
  }

  Future<void> setEnumList<Enum>(String key, List<Enum> value) async {
    final serialized = value.map((e) => e.toString()).toList();
    await saveData<List<String>>(key, serialized);
  }

  // Method to delete data
  Future<void> deleteData(String key) async {
    await _box.delete(key);
  }

  // Method to clear all data (use with caution)
  Future<void> clearAll() async {
    await _box.clear();
  }
}
