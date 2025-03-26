import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/features/banners/providers/fullscreen_provider.dart';
import 'package:selene/features/more/providers/more_preferences.dart';

part 'banners_provider.g.dart';

@riverpod
class BannersActive extends _$BannersActive {
  @override
  bool build() {
    final more = ref.watch(morePreferencesProvider);
    final fullscreen = ref.watch(fullscreenProvider);

    return (more.downloadedOnly.get() || more.incognitoMode.get()) &&
        !fullscreen;
  }

  bool get downloadedOnly =>
      ref.watch(morePreferencesProvider).downloadedOnly.get();
  bool get incognitoMode =>
      ref.watch(morePreferencesProvider).incognitoMode.get();
}
