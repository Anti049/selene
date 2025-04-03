import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

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

enum DisplayMode {
  compactGrid('Compact Grid'),
  comfortableGrid('Comfortable Grid'),
  coverOnlyGrid('Cover-Only Grid'),
  list('List'),
  componentList('Component List');

  const DisplayMode(this.label);
  final String label;
}

enum ReaderOptionButton {
  readingMode('Reading Mode', Symbols.phonelink_setup),
  screenRotation('Screen Rotation', Symbols.screen_rotation),
  readerColors('Reader Colors', Symbols.palette),
  audiobook('Audiobook', Symbols.audiotrack),
  settings('Settings', Symbols.settings, fill: 1.0),
  brightness('Brightness', Symbols.brightness_4),
  font('Font', Symbols.font_download),
  fontSize('Font Size', Symbols.format_size),
  lineHeight('Line Height', Symbols.line_weight);

  const ReaderOptionButton(this.label, this.icon, {this.fill = 1.0});
  final String label;
  final IconData icon;
  final double fill;
}

enum ReadingMode {
  pagedLtr('Paged LTR', 'paged_ltr'),
  pagedRtl('Paged RTL', 'paged_rtl'),
  pagedVertical('Paged Vertical', 'paged_vertical'),
  continuous('Continuous', 'continuous');

  const ReadingMode(this.label, this.icon);
  final String label;
  final String icon;
}

enum ScreenRotation {
  free('Free', Symbols.screen_rotation),
  portrait('Portrait', Symbols.stay_current_portrait),
  forcePortrait('Force Portrait', Symbols.screen_lock_portrait),
  landscape('Landscape', Symbols.stay_current_landscape),
  forceLandscape('Force Landscape', Symbols.screen_lock_landscape);

  const ScreenRotation(this.label, this.icon);
  final String label;
  final IconData icon;
}

enum ReaderColors {
  whiteOnBlack('White on Black'),
  blackOnWhite('Black on White'),
  whiteOnSepia('White on Sepia'),
  blackOnSepia('Black on Sepia'),
  whiteOnGreen('White on Green'),
  blackOnGreen('Black on Green'),
  whiteOnBlue('White on Blue'),
  blackOnBlue('Black on Blue'),
  whiteOnRed('White on Red'),
  blackOnRed('Black on Red'),
  whiteOnYellow('White on Yellow'),
  blackOnYellow('Black on Yellow'),
  whiteOnPink('White on Pink'),
  blackOnPink('Black on Pink'),
  whiteOnPurple('White on Purple'),
  blackOnPurple('Black on Purple'),
  whiteOnOrange('White on Orange'),
  blackOnOrange('Black on Orange'),
  whiteOnBrown('White on Brown'),
  blackOnBrown('Black on Brown'),
  whiteOnGrey('White on Grey'),
  blackOnGrey('Black on Grey'),
  whiteOnCyan('White on Cyan'),
  blackOnCyan('Black on Cyan'),
  whiteOnMagenta('White on Magenta'),
  blackOnMagenta('Black on Magenta');

  const ReaderColors(this.label);
  final String label;
}
