import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/core/providers/preference_provider.dart';
import 'package:selene/domain/models/preference.dart';
import 'package:selene/domain/models/preference_store.dart';
import 'package:selene/utils/enums.dart';

part 'library_preferences.g.dart';

class LibraryPreferences {
  LibraryPreferences(this._preferences);
  final PreferenceStore _preferences;

  // Reset helper function
  void _resetPreferences(List<Preference> preferences) {
    for (final preference in preferences) {
      preference.reset();
    }
  }

  // Filters
  void resetFilters() => _resetPreferences([
    filterDownloaded,
    filterUnread,
    filterStarted,
    filterCompleted,
    filterBookmarked,
    filterUpdated,
  ]);

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
    'filterBookmarked',
    TriState.disabled,
    TriState.values,
  );
  Preference<TriState> get filterUpdated =>
      _preferences.getEnum('filterUpdated', TriState.disabled, TriState.values);

  // Sort
  void resetSort() => _resetPreferences([sortBy, sortDirection]);

  Preference<SortBy> get sortBy =>
      _preferences.getEnum('sort_by', SortBy.alphabetically, SortBy.values);
  Preference<SortDirection> get sortDirection => _preferences.getEnum(
    'sort_direction',
    SortDirection.descending,
    SortDirection.values,
  );

  // Display
  void resetDisplay() => _resetPreferences([
    displayMode,
    gridSize,
    downloadedBadge,
    unreadBadge,
    localBadge,
    languageBadge,
    sourceBadge,
    continueReadingButton,
    showCategoryTabs,
    showFavoriteTabs,
    showWorkCount,
    showCharacterTags,
    showFriendshipTags,
    showRelationshipTags,
    showFreeformTags,
    showDescription,
  ]);

  Preference<DisplayMode> get displayMode => _preferences.getEnum(
    'display_mode',
    DisplayMode.comfortableGrid,
    DisplayMode.values,
  );
  Preference<double> get gridSize =>
      _preferences.getDouble('gridSize', defaultValue: 0.0);
  Preference<bool> get downloadedBadge =>
      _preferences.getBool('downloadedBadge', defaultValue: true);
  Preference<bool> get unreadBadge =>
      _preferences.getBool('unreadBadge', defaultValue: true);
  Preference<bool> get localBadge =>
      _preferences.getBool('localBadge', defaultValue: true);
  Preference<bool> get languageBadge =>
      _preferences.getBool('languageBadge', defaultValue: true);
  Preference<bool> get skipOutsideReleasePeriod =>
      _preferences.getBool("skipOutsideReleasePeriod", defaultValue: true);
  Preference<bool> get sourceBadge =>
      _preferences.getBool('sourceBadge', defaultValue: true);
  Preference<bool> get continueReadingButton =>
      _preferences.getBool('continueReadingButton', defaultValue: true);
  Preference<bool> get showCategoryTabs =>
      _preferences.getBool('showCategoryTabs', defaultValue: true);
  Preference<bool> get showFavoriteTabs =>
      _preferences.getBool('showFavoriteTabs', defaultValue: true);
  Preference<bool> get showWorkCount =>
      _preferences.getBool('showWorkCount', defaultValue: true);
  Preference<bool> get showCharacterTags =>
      _preferences.getBool('showCharacterTags', defaultValue: false);
  Preference<bool> get showFriendshipTags =>
      _preferences.getBool('showFriendshipTags', defaultValue: false);
  Preference<bool> get showRelationshipTags =>
      _preferences.getBool('showRelationshipTags', defaultValue: false);
  Preference<bool> get showFreeformTags =>
      _preferences.getBool('showFreeformTags', defaultValue: false);
  Preference<bool> get showDescription =>
      _preferences.getBool('showDescription', defaultValue: true);

  // Options Active
  bool get optionsActive => _arePreferencesActive([
    filterDownloaded,
    filterUnread,
    filterStarted,
    filterCompleted,
    filterBookmarked,
    filterUpdated,
    sortBy,
    sortDirection,
  ]);

  int get numOptionsActive => _countActivePreferences([
    filterDownloaded,
    filterUnread,
    filterStarted,
    filterCompleted,
    filterBookmarked,
    filterUpdated,
    sortBy,
    sortDirection,
  ]);

  bool _arePreferencesActive(List<Preference> preferences) =>
      preferences.any((pref) => pref.get() != pref.defaultValue);

  int _countActivePreferences(List<Preference> preferences) =>
      preferences.where((pref) => pref.get() != pref.defaultValue).length;
}

@riverpod
LibraryPreferences libraryPreferences(Ref ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
