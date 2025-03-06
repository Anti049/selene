enum TriState {
  /// Checkbox off
  ///
  /// ⬜
  ///
  /// This is used when the checkbox is fully unchecked, for example when no items are selected.
  disabled,

  /// Checkbox on
  ///
  /// ✅
  ///
  /// This is used when the checkbox is fully checked, for example when all items are selected.
  enabledTrue,

  /// Checkbox partially on
  ///
  /// ❎
  ///
  /// This is used when the checkbox is partially checked, for example when some but not all items are selected.
  enabledFalse;

  TriState next() => switch (this) {
    TriState.disabled => TriState.enabledTrue,
    TriState.enabledTrue => TriState.enabledFalse,
    TriState.enabledFalse => TriState.disabled,
  };

  bool? toBool() => switch (this) {
    TriState.disabled => false,
    TriState.enabledTrue => true,
    TriState.enabledFalse => null,
  };

  static TriState fromBool(bool? value) => switch (value) {
    false => TriState.disabled,
    true => TriState.enabledTrue,
    null => TriState.enabledFalse,
  };
}

enum SortBy {
  alphabetically('Alphabetically'),
  author('Author'),
  totalChapters('Total Chapters'),
  lastRead('Last Read'),
  lastChecked('Last Checked'),
  lastUpdated('Last Updated'),
  unreadChapters('Unread Chapters'),
  latestChapter('Latest Chapter'),
  dateFetched('Date Fetched'),
  dateAdded('Date Added');

  const SortBy(this.label);
  final String label;
}

enum SortDirection { descending, ascending }

enum DisplayMode { compactGrid, comfortableGrid, coverOnlyGrid, list }
