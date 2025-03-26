import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart' hide DebounceExtensions;
import 'package:selene/features/library/models/item_preferences.dart';
import 'package:selene/features/library/models/library_item.dart';
import 'package:selene/features/library/models/library_model.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/more/providers/more_preferences.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/utils/enums.dart';
import 'package:stream_transform/stream_transform.dart';

part 'library_state.g.dart';

@riverpod
class LibraryState extends _$LibraryState {
  @override
  Stream<LibraryModel> build() {
    // Get preferences
    final libraryPrefs = ref.watch(libraryPreferencesProvider);

    final searchStream = Rx.combineLatestList([
      _getSearchQuery().distinct().debounce(const Duration(milliseconds: 250)),
      _getLibraryItems(),
    ]).asyncMap((data) async {
      final searchQuery = data[0] as String?;
      final libraryItems = data[1] as List<LibraryItem>;

      // Filter library items
      final queriedLibrary =
          libraryItems.where((item) {
            return searchQuery.isNullOrEmpty || item.matches(searchQuery!);
          }).toList();

      // Create new state
      return LibraryModel(
        libraryItems: queriedLibrary,
        searchQuery: searchQuery,
        hasActiveFilters: libraryPrefs.optionsActive,
      );
    });

    // Get preferences stream
    final preferencesStream = Rx.combineLatest(
      [_getPreferences()],
      (it) => ([]).any((it) => it != null && it),
    ).distinct().map((it) => LibraryModel(hasActiveFilters: it));

    // Return stream
    return Rx.combineLatest2(
      searchStream,
      preferencesStream,
      (search, prefs) => LibraryModel(
        libraryItems: search.libraryItems,
        searchQuery: search.searchQuery,
        hasActiveFilters: prefs.hasActiveFilters,
      ),
    );
  }

  // Get preferences stream
  Stream<ItemPreferences> _getPreferences() {
    final libraryPrefs = ref.watch(libraryPreferencesProvider);
    final morePrefs = ref.watch(morePreferencesProvider);

    return Rx.combineLatest(
      [
        libraryPrefs.downloadedBadge.changes(),
        libraryPrefs.localBadge.changes(),
        libraryPrefs.languageBadge.changes(),
        libraryPrefs.skipOutsideReleasePeriod.changes(),
        morePrefs.downloadedOnly.changes(),
        libraryPrefs.filterDownloaded.changes(),
        libraryPrefs.filterUnread.changes(),
        libraryPrefs.filterStarted.changes(),
        libraryPrefs.filterBookmarked.changes(),
        libraryPrefs.filterCompleted.changes(),
      ],
      (it) => ItemPreferences(
        downloadBadge: it[0] as bool,
        localBadge: it[1] as bool,
        languageBadge: it[2] as bool,
        skipOutsideReleasePeriod: it[3] as bool,
        globalFilterDownloaded: it[4] as bool,
        filterDownloaded: (it[5] as TriState).toBool(),
        filterUnread: (it[6] as TriState).toBool(),
        filterStarted: (it[7] as TriState).toBool(),
        filterBookmarked: (it[8] as TriState).toBool(),
        filterCompleted: (it[9] as TriState).toBool(),
        filterIntervalCustom: false,
      ),
    );
  }

  /// Get search query stream
  Stream<String?> _getSearchQuery() async* {
    yield state.valueOrNull?.searchQuery;
  }

  /// Get library items stream
  Stream<List<LibraryItem>> _getLibraryItems() {
    // Get preferences
    // final libraryPrefs = ref.watch(libraryPreferencesProvider);

    // Sample stories
    final libraryItems = [
      ...List.generate(
        20,
        (index) => LibraryItem(
          id: index,
          story: Story(
            title: 'Sample Story ${index + 1}',
            url: '',
            author: 'Author ${index + 1}',
            description: loremIpsum(words: 60),
            chapterCount: Random().nextInt(99) + 1,
          ),
        ),
      ),
    ];

    // Get library items stream
    final libraryItemsStream = Stream.value(libraryItems);

    return libraryItemsStream;
  }

  // Search
  void search(String? query) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(searchQuery: query);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  // Select
  void clearSelection() async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(selectedItems: []);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  void toggleSelection(LibraryItem item) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(
        selectedItems:
            previousState.selectedItems.contains(item)
                ? previousState.selectedItems.where((it) => it != item).toList()
                : [...previousState.selectedItems, item],
      );
      state = await AsyncValue.guard(() async => newState);
    }
  }

  /// Selects all works between and including the given work and the last pressed work
  void toggleRangeSelection(LibraryItem item) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final selectedItems = previousState.selectedItems;
      final lastSelected = selectedItems.isNotEmpty ? selectedItems.last : null;

      final newState = previousState.copyWith(
        selectedItems: [
          ...selectedItems,
          ...previousState.libraryItems.sublist(
            min(
              previousState.libraryItems.indexOf(item),
              previousState.libraryItems.indexOf(lastSelected ?? item),
            ),
            max(
              previousState.libraryItems.indexOf(item) + 1,
              previousState.libraryItems.indexOf(lastSelected ?? item),
            ),
          ),
        ],
      );
      state = await AsyncValue.guard(() async => newState);
    }
  }

  void selectAll() async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(
        selectedItems: previousState.libraryItems,
      );
      state = await AsyncValue.guard(() async => newState);
    }
  }

  void invertSelection() async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(
        selectedItems:
            previousState.libraryItems
                .where((it) => !previousState.selectedItems.contains(it))
                .toList(),
      );
      state = await AsyncValue.guard(() async => newState);
    }
  }

  // Refresh
  Future<LibraryModel> refresh() async {
    return ref.refresh(libraryStateProvider.future);
  }
}
