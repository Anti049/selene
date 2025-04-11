// lib/features/settings/models/preference.dart
import 'package:selene/data/datasources/local/preferences/preferences_service.dart'; // Import the service

sealed class Preference<T> {
  final String _key;
  final PreferencesService _preferencesService; // Use PreferencesService
  final T _defaultValue;
  // final Ref<dynamic> _ref;

  Preference(
    this._key,
    this._preferencesService,
    this._defaultValue,
    // this._ref,
  );

  // Read/write
  T read(String key, T defaultValue) {
    // Use the service to get data
    return _preferencesService.getData<T>(key, defaultValue: defaultValue) ??
        defaultValue;
  }

  void write(String key, T value) {
    // Use the service to save data (no async needed here)
    _preferencesService.saveData<T>(key, value);
    // _ref.notifyListeners();
  }

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

  void reset() {
    set(_defaultValue);
  }

  // Delete
  void delete() {
    _preferencesService.deleteData(_key);
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
  BoolPreference(super.key, super.preferencesService, super.defaultValue);
}

class IntPreference extends Preference<int> {
  IntPreference(super.key, super.preferencesService, super.defaultValue);
}

class DoublePreference extends Preference<double> {
  DoublePreference(super.key, super.preferencesService, super.defaultValue);
}

class StringPreference extends Preference<String> {
  StringPreference(super.key, super.preferencesService, super.defaultValue);
}

class StringSetPreference extends Preference<Set<String>> {
  StringSetPreference(super.key, super.preferencesService, super.defaultValue);

  @override
  Set<String> read(String key, Set<String> defaultValue) =>
      _preferencesService.getStringSet(key, defaultValue: defaultValue);

  @override
  void write(String key, Set<String> value) {
    _preferencesService.setStringSet(key, value);
    // _ref.notifyListeners();
  }
}

class ObjectPreference<T> extends Preference<T> {
  ObjectPreference(
    super.key,
    super.preferencesService,
    super.defaultValue,

    this.serializer,
    this.deserializer,
  );

  final String Function(T) serializer;
  final T Function(String) deserializer;

  @override
  T read(String key, T defaultValue) {
    final value = _preferencesService.getData(key, defaultValue: defaultValue);
    return value == null
        ? defaultValue
        : deserializer(value is String ? value : value.toString());
  }

  @override
  void write(String key, T value) {
    _preferencesService.saveData(key, serializer(value));
    // _ref.notifyListeners();
  }
}

class EnumPreference<Enum> extends Preference<Enum> {
  EnumPreference(
    super.key,
    super.preferencesService,
    super.defaultValue,

    this.values,
  );

  final Iterable<Enum> values;

  @override
  Enum read(String key, Enum defaultValue) =>
      _preferencesService.getEnum(key, defaultValue, values);

  @override
  void write(String key, Enum value) {
    _preferencesService.setEnum(key, value);
    // _ref.notifyListeners();
  }
}

class EnumListPreference<Enum> extends Preference<List<Enum>> {
  EnumListPreference(
    super.key,
    super.preferencesService,
    super.defaultValue,

    this.values,
  );

  final Iterable<Enum> values;

  @override
  List<Enum> read(String key, List<Enum> defaultValue) {
    return _preferencesService.getEnumList(key, defaultValue, values);
    // final storedList = _preferencesService.getData<List<String>>(
    //   key,
    //   defaultValue: defaultValue.map((e) => e.toString()).toList(),
    // );
    // return storedList
    //     .map(
    //       (value) => values.firstWhere(
    //         (e) => e.toString() == value,
    //         orElse: () => defaultValue.first,
    //       ),
    //     )
    //     .whereType<Enum>()
    //     .toList();
  }

  @override
  void write(String key, List<Enum> value) {
    _preferencesService.setEnumList(key, value);
    // _ref.notifyListeners();
  }
}
