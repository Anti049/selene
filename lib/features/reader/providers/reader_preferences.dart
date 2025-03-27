import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:selene/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reader_preferences.g.dart';

class ReaderPreferences {
  ReaderPreferences(this._preferences);
  final PreferenceStore _preferences;

  // Button Options
  Preference<List<ReaderOptionButton>> get buttonOptions =>
      _preferences.getEnumList('button_options', [
        ReaderOptionButton.readingMode,
        ReaderOptionButton.screenRotation,
        ReaderOptionButton.readerColors,
        ReaderOptionButton.settings,
      ], ReaderOptionButton.values);
  Preference<bool> get multiLineButtons =>
      _preferences.getBool('multi_line_buttons', defaultValue: false);

  // Reading Mode
  Preference<ReadingMode> get readingMode => _preferences.getEnum(
    'reading_mode',
    ReadingMode.pagedLtr,
    ReadingMode.values,
  );

  // Rotation
  Preference<ScreenRotation> get screenRotation => _preferences.getEnum(
    'screen_rotation',
    ScreenRotation.free,
    ScreenRotation.values,
  );
}

@riverpod
ReaderPreferences readerPreferences(Ref ref) =>
    ReaderPreferences(ref.watch(preferencesProvider));
