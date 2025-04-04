import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/providers/preference_provider.dart';
import 'package:selene/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_preferences.g.dart';

class LibraryPreferences {
  LibraryPreferences(this._preferences);
  final PreferenceStore _preferences;

  bool get optionsActive {
    bool filtersActive =
        filterDownloaded.get() != filterDownloaded.defaultValue ||
        filterUnread.get() != filterUnread.defaultValue ||
        filterStarted.get() != filterStarted.defaultValue ||
        filterCompleted.get() != filterCompleted.defaultValue ||
        filterBookmarked.get() != filterBookmarked.defaultValue ||
        filterUpdated.get() != filterUpdated.defaultValue;
    bool sortActive =
        sortBy.get() != sortBy.defaultValue ||
        sortDirection.get() != sortDirection.defaultValue;

    return filtersActive || sortActive;
  }

  int get numOptionsActive {
    int filtersActive = 0;
    if (filterDownloaded.get() != filterDownloaded.defaultValue)
      filtersActive++;
    if (filterUnread.get() != filterUnread.defaultValue) filtersActive++;
    if (filterStarted.get() != filterStarted.defaultValue) filtersActive++;
    if (filterCompleted.get() != filterCompleted.defaultValue) filtersActive++;
    if (filterBookmarked.get() != filterBookmarked.defaultValue)
      filtersActive++;
    if (filterUpdated.get() != filterUpdated.defaultValue) filtersActive++;

    int sortActive = 0;
    if (sortBy.get() != sortBy.defaultValue) sortActive++;
    if (sortDirection.get() != sortDirection.defaultValue) sortActive++;

    return filtersActive + sortActive;
  }

  // Tags

  // Filters
  void resetFilters() {
    filterDownloaded.reset();
    filterUnread.reset();
    filterStarted.reset();
    filterCompleted.reset();
    filterBookmarked.reset();
    filterUpdated.reset();
  }

  Preference<TriState> get filterDownloaded => _preferences.getEnum(
    'filter_downloaded',
    TriState.disabled,
    TriState.values,
  );
  Preference<TriState> get filterUnread =>
      _preferences.getEnum('filter_unread', TriState.disabled, TriState.values);
  Preference<TriState> get filterStarted => _preferences.getEnum(
    'filter_started',
    TriState.disabled,
    TriState.values,
  );
  Preference<TriState> get filterCompleted => _preferences.getEnum(
    'filter_completed',
    TriState.disabled,
    TriState.values,
  );
  Preference<TriState> get filterBookmarked => _preferences.getEnum(
    "filterBookmarked",
    TriState.disabled,
    TriState.values,
  );
  Preference<TriState> get filterUpdated =>
      _preferences.getEnum("filterUpdated", TriState.disabled, TriState.values);

  // Sort
  void resetSort() {
    sortBy.reset();
    sortDirection.reset();
  }

  Preference<SortBy> get sortBy =>
      _preferences.getEnum('sort_by', SortBy.alphabetically, SortBy.values);
  Preference<SortDirection> get sortDirection => _preferences.getEnum(
    'sort_direction',
    SortDirection.descending,
    SortDirection.values,
  );

  // Display
  void resetDisplay() {
    displayMode.reset();
    gridSize.reset();
    downloadedBadge.reset();
    unreadBadge.reset();
    localBadge.reset();
    languageBadge.reset();
    sourceBadge.reset();
    continueReadingButton.reset();
    showCategoryTabs.reset();
    showFavoriteTabs.reset();
    showWorkCount.reset();
  }

  Preference<DisplayMode> get displayMode => _preferences.getEnum(
    'display_mode',
    DisplayMode.comfortableGrid,
    DisplayMode.values,
  );
  Preference<double> get gridSize =>
      _preferences.getDouble("gridSize", defaultValue: 0.0);
  Preference<bool> get downloadedBadge =>
      _preferences.getBool("downloadedBadge", defaultValue: true);
  Preference<bool> get unreadBadge =>
      _preferences.getBool("unreadBadge", defaultValue: true);
  Preference<bool> get localBadge =>
      _preferences.getBool("localBadge", defaultValue: true);
  Preference<bool> get languageBadge =>
      _preferences.getBool("languageBadge", defaultValue: true);
  Preference<bool> get skipOutsideReleasePeriod =>
      _preferences.getBool("skipOutsideReleasePeriod", defaultValue: true);
  Preference<bool> get sourceBadge =>
      _preferences.getBool("sourceBadge", defaultValue: true);
  Preference<bool> get continueReadingButton =>
      _preferences.getBool("continueReadingButton", defaultValue: true);
  Preference<bool> get showCategoryTabs =>
      _preferences.getBool("showCategoryTabs", defaultValue: true);
  Preference<bool> get showFavoriteTabs =>
      _preferences.getBool("showFavoriteTabs", defaultValue: true);
  Preference<bool> get showWorkCount =>
      _preferences.getBool("showWorkCount", defaultValue: true);
  Preference<bool> get showCharacterTags =>
      _preferences.getBool("showCharacterTags", defaultValue: false);
  Preference<bool> get showFriendshipTags =>
      _preferences.getBool("showFriendshipTags", defaultValue: false);
  Preference<bool> get showRelationshipTags =>
      _preferences.getBool("showRelationshipTags", defaultValue: false);
  Preference<bool> get showFreeformTags =>
      _preferences.getBool("showFreeformTags", defaultValue: false);
  Preference<bool> get showDescription =>
      _preferences.getBool("showDescription", defaultValue: true);
}

@riverpod
LibraryPreferences libraryPreferences(Ref ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
