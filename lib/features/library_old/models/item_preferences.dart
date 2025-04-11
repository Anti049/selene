import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_preferences.freezed.dart';

@freezed
class ItemPreferences with _$ItemPreferences {
  const factory ItemPreferences({
    required bool downloadBadge,
    required bool localBadge,
    required bool languageBadge,
    required bool skipOutsideReleasePeriod,
    required bool globalFilterDownloaded,
    required bool? filterDownloaded,
    required bool? filterUnread,
    required bool? filterStarted,
    required bool? filterBookmarked,
    required bool? filterCompleted,
    required bool? filterIntervalCustom,
  }) = _ItemPreferences;
}
