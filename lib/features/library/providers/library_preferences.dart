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
        filterDownloaded.get() != TriState.disabled ||
        filterUnread.get() != TriState.disabled ||
        filterStarted.get() != TriState.disabled ||
        filterCompleted.get() != TriState.disabled ||
        filterBookmarked.get() != TriState.disabled ||
        filterUpdated.get() != TriState.disabled;
    bool sortActive =
        sortBy.get() != SortBy.alphabetically ||
        sortDirection.get() != SortDirection.ascending;

    return filtersActive || sortActive;
  }

  int get numOptionsActive {
    int filtersActive = 0;
    if (filterDownloaded.get() != TriState.disabled) filtersActive++;
    if (filterUnread.get() != TriState.disabled) filtersActive++;
    if (filterStarted.get() != TriState.disabled) filtersActive++;
    if (filterCompleted.get() != TriState.disabled) filtersActive++;
    if (filterBookmarked.get() != TriState.disabled) filtersActive++;
    if (filterUpdated.get() != TriState.disabled) filtersActive++;

    int sortActive = 0;
    if (sortBy.get() != SortBy.alphabetically) sortActive++;
    if (sortDirection.get() != SortDirection.ascending) sortActive++;

    return filtersActive + sortActive;
  }

  // Tags

  // Filters
  void resetFilters() {
    filterDownloaded.set(TriState.disabled);
    filterUnread.set(TriState.disabled);
    filterStarted.set(TriState.disabled);
    filterCompleted.set(TriState.disabled);
    filterBookmarked.set(TriState.disabled);
    filterUpdated.set(TriState.disabled);
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
    sortBy.set(SortBy.alphabetically);
    sortDirection.set(SortDirection.descending);
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
    displayMode.set(DisplayMode.comfortableGrid);
    gridSize.set(0.0);
    downloadedBadge.set(true);
    unreadBadge.set(true);
    localBadge.set(true);
    languageBadge.set(true);
    sourceBadge.set(true);
    continueReadingButton.set(true);
    showCategoryTabs.set(true);
    showFavoriteTabs.set(true);
    showWorkCount.set(true);
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
}

@riverpod
LibraryPreferences libraryPreferences(Ref ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
