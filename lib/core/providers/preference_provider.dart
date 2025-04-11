// lib/features/settings/providers/preference_provider.dart
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/data/datasources/local/preferences/preferences_service.dart'; // Import the service
import 'package:selene/domain/models/preference_store.dart';

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
