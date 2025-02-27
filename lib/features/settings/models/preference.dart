import 'package:hive_ce_flutter/hive_flutter.dart';

sealed class Preference<T> {
  final String _key;
  final Box _preferences;
  final T _defaultValue;

  Preference(this._key, this._preferences, this._defaultValue);

  // Read/write
  T read(String key, T defaultValue) =>
      _preferences.get(key, defaultValue: defaultValue);
  void write(String key, T value) => _preferences.put(key, value);

  // Get/set
  T get() {
    try {
      return read(_key, _defaultValue);
    } catch (e) {
      delete();
      return _defaultValue;
    }
  }

  void set(value) {
    write(_key, value);
  }

  // Delete
  void delete() async {
    _preferences.delete(_key);
  }

  // Default value
  T get defaultValue => _defaultValue;

  // Changes
  Stream<T> _watch() => Stream.value(get());
  Stream<T> changes() => _watch();
}

// Extensions
// - bool
extension PreferenceBool on Preference<bool> {
  bool toggle() {
    set(!get());
    return get();
  }
}

// - enum
extension PreferenceEnum<T> on Preference<T> {
  T cycle(List<T> values) {
    final current = get();
    final next = values[(values.indexOf(current) + 1) % values.length];
    set(next);
    return get();
  }
}

// Extended classes
class BoolPreference extends Preference<bool> {
  BoolPreference(super.key, super.preferences, super.defaultValue);
}

class IntPreference extends Preference<int> {
  IntPreference(super.key, super.preferences, super.defaultValue);
}

class DoublePreference extends Preference<double> {
  DoublePreference(super.key, super.preferences, super.defaultValue);
}

class StringPreference extends Preference<String> {
  StringPreference(super.key, super.preferences, super.defaultValue);
}

class StringSetPreference extends Preference<Set<String>> {
  StringSetPreference(super.key, super.preferences, super.defaultValue);

  @override
  Set<String> read(String key, Set<String> defaultValue) =>
      _preferences.get(key, defaultValue: defaultValue.toList()).toSet();

  @override
  void write(String key, Set<String> value) =>
      _preferences.put(key, value.toList());
}

class ObjectPreference<T> extends Preference<T> {
  ObjectPreference(
    super.key,
    super.preferences,
    super.defaultValue,
    this.serializer,
    this.deserializer,
  );

  final String Function(T) serializer;
  final T Function(String) deserializer;

  @override
  T read(String key, T defaultValue) {
    final value = _preferences.get(key, defaultValue: defaultValue);
    return value == null
        ? defaultValue
        : deserializer(value is String ? value : value.toString());
  }

  @override
  void write(String key, T value) {
    _preferences.put(key, serializer(value));
  }
}

class EnumPreference<Enum> extends Preference<Enum> {
  EnumPreference(super.key, super.preferences, super.defaultValue, this.values);

  final Iterable<Enum> values;

  @override
  Enum read(String key, Enum defaultValue) {
    final value = _preferences.get(key, defaultValue: defaultValue.toString());
    return values.firstWhere(
      (e) => e.toString() == value,
      orElse: () => defaultValue,
    );
  }

  @override
  void write(String key, Enum value) {
    _preferences.put(key, value.toString());
  }
}
