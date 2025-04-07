// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;
import 'package:selene/domain/entities/work_entity.dart' as _i25;
import 'package:selene/features/browse/browse_tab.dart' as _i4;
import 'package:selene/features/browse/screens/extensions/extensions_tab.dart'
    as _i6;
import 'package:selene/features/browse/screens/migrate/migrate_tab.dart'
    as _i13;
import 'package:selene/features/browse/screens/sources/sources_tab.dart'
    as _i18;
import 'package:selene/features/history/history_tab.dart' as _i8;
import 'package:selene/features/library/library_tab.dart' as _i11;
import 'package:selene/features/library/screens/details/details_page.dart'
    as _i22;
import 'package:selene/features/library/screens/options/display/display_tab.dart'
    as _i5;
import 'package:selene/features/library/screens/options/filters/filters_tab.dart'
    as _i7;
import 'package:selene/features/library/screens/options/library_options_page.dart'
    as _i9;
import 'package:selene/features/library/screens/options/sort/sort_tab.dart'
    as _i17;
import 'package:selene/features/library/screens/options/tags/tags_tab.dart'
    as _i19;
import 'package:selene/features/main/main_screen.dart' as _i12;
import 'package:selene/features/more/more_tab.dart' as _i14;
import 'package:selene/features/reader/reader_page.dart' as _i15;
import 'package:selene/features/settings/screens/about/about_page.dart' as _i1;
import 'package:selene/features/settings/screens/advanced/advanced_page.dart'
    as _i2;
import 'package:selene/features/settings/screens/appearance/appearance_page.dart'
    as _i3;
import 'package:selene/features/settings/screens/appearance/themes/theme_selection_page.dart'
    as _i20;
import 'package:selene/features/settings/screens/library/library_page.dart'
    as _i10;
import 'package:selene/features/settings/settings_page.dart' as _i16;
import 'package:selene/features/updates/updates_tab.dart' as _i21;

/// generated route for
/// [_i1.AboutSettingsPage]
class AboutSettingsRoute extends _i23.PageRouteInfo<void> {
  const AboutSettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AboutSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutSettingsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.AdvancedSettingsPage]
class AdvancedSettingsRoute extends _i23.PageRouteInfo<void> {
  const AdvancedSettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AdvancedSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvancedSettingsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i2.AdvancedSettingsPage();
    },
  );
}

/// generated route for
/// [_i3.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i23.PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [_i4.BrowseTab]
class BrowseRoute extends _i23.PageRouteInfo<void> {
  const BrowseRoute({List<_i23.PageRouteInfo>? children})
      : super(
          BrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowseRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i4.BrowseTab();
    },
  );
}

/// generated route for
/// [_i5.DisplayTab]
class DisplayRoute extends _i23.PageRouteInfo<DisplayRouteArgs> {
  DisplayRoute({
    _i24.Key? key,
    _i24.ScrollController? scrollController,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          DisplayRoute.name,
          args: DisplayRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'DisplayRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<DisplayRouteArgs>(orElse: () => const DisplayRouteArgs());
      return _i5.DisplayTab(
        key: args.key,
        scrollController: args.scrollController,
      );
    },
  );
}

class DisplayRouteArgs {
  const DisplayRouteArgs({
    this.key,
    this.scrollController,
  });

  final _i24.Key? key;

  final _i24.ScrollController? scrollController;

  @override
  String toString() {
    return 'DisplayRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i6.ExtensionsTab]
class ExtensionsRoute extends _i23.PageRouteInfo<void> {
  const ExtensionsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ExtensionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExtensionsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i6.ExtensionsTab();
    },
  );
}

/// generated route for
/// [_i7.FiltersTab]
class FiltersRoute extends _i23.PageRouteInfo<FiltersRouteArgs> {
  FiltersRoute({
    _i24.Key? key,
    _i24.ScrollController? scrollController,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          FiltersRoute.name,
          args: FiltersRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'FiltersRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<FiltersRouteArgs>(orElse: () => const FiltersRouteArgs());
      return _i7.FiltersTab(
        key: args.key,
        scrollController: args.scrollController,
      );
    },
  );
}

class FiltersRouteArgs {
  const FiltersRouteArgs({
    this.key,
    this.scrollController,
  });

  final _i24.Key? key;

  final _i24.ScrollController? scrollController;

  @override
  String toString() {
    return 'FiltersRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i8.HistoryTab]
class HistoryRoute extends _i23.PageRouteInfo<void> {
  const HistoryRoute({List<_i23.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i8.HistoryTab();
    },
  );
}

/// generated route for
/// [_i9.LibraryOptionsPage]
class LibraryOptionsRoute extends _i23.PageRouteInfo<void> {
  const LibraryOptionsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LibraryOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryOptionsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i9.LibraryOptionsPage();
    },
  );
}

/// generated route for
/// [_i10.LibrarySettingsPage]
class LibrarySettingsRoute extends _i23.PageRouteInfo<void> {
  const LibrarySettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LibrarySettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibrarySettingsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i10.LibrarySettingsPage();
    },
  );
}

/// generated route for
/// [_i11.LibraryTab]
class LibraryRoute extends _i23.PageRouteInfo<void> {
  const LibraryRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i11.LibraryTab();
    },
  );
}

/// generated route for
/// [_i12.MainScreen]
class MainRoute extends _i23.PageRouteInfo<void> {
  const MainRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i12.MainScreen();
    },
  );
}

/// generated route for
/// [_i13.MigrateTab]
class MigrateRoute extends _i23.PageRouteInfo<void> {
  const MigrateRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MigrateRoute.name,
          initialChildren: children,
        );

  static const String name = 'MigrateRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i13.MigrateTab();
    },
  );
}

/// generated route for
/// [_i14.MoreTab]
class MoreRoute extends _i23.PageRouteInfo<void> {
  const MoreRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i14.MoreTab();
    },
  );
}

/// generated route for
/// [_i15.ReaderPage]
class ReaderRoute extends _i23.PageRouteInfo<ReaderRouteArgs> {
  ReaderRoute({
    _i24.Key? key,
    required _i25.WorkEntity work,
    int? chapter,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          ReaderRoute.name,
          args: ReaderRouteArgs(
            key: key,
            work: work,
            chapter: chapter,
          ),
          initialChildren: children,
        );

  static const String name = 'ReaderRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReaderRouteArgs>();
      return _i15.ReaderPage(
        key: args.key,
        work: args.work,
        chapter: args.chapter,
      );
    },
  );
}

class ReaderRouteArgs {
  const ReaderRouteArgs({
    this.key,
    required this.work,
    this.chapter,
  });

  final _i24.Key? key;

  final _i25.WorkEntity work;

  final int? chapter;

  @override
  String toString() {
    return 'ReaderRouteArgs{key: $key, work: $work, chapter: $chapter}';
  }
}

/// generated route for
/// [_i16.SettingsPage]
class SettingsRoute extends _i23.PageRouteInfo<void> {
  const SettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i16.SettingsPage();
    },
  );
}

/// generated route for
/// [_i17.SortTab]
class SortRoute extends _i23.PageRouteInfo<SortRouteArgs> {
  SortRoute({
    _i24.Key? key,
    _i24.ScrollController? scrollController,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          SortRoute.name,
          args: SortRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'SortRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SortRouteArgs>(orElse: () => const SortRouteArgs());
      return _i17.SortTab(
        key: args.key,
        scrollController: args.scrollController,
      );
    },
  );
}

class SortRouteArgs {
  const SortRouteArgs({
    this.key,
    this.scrollController,
  });

  final _i24.Key? key;

  final _i24.ScrollController? scrollController;

  @override
  String toString() {
    return 'SortRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i18.SourcesTab]
class SourcesRoute extends _i23.PageRouteInfo<void> {
  const SourcesRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SourcesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SourcesRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i18.SourcesTab();
    },
  );
}

/// generated route for
/// [_i19.TagsTab]
class TagsRoute extends _i23.PageRouteInfo<TagsRouteArgs> {
  TagsRoute({
    _i24.Key? key,
    _i24.ScrollController? scrollController,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          TagsRoute.name,
          args: TagsRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<TagsRouteArgs>(orElse: () => const TagsRouteArgs());
      return _i19.TagsTab(
        key: args.key,
        scrollController: args.scrollController,
      );
    },
  );
}

class TagsRouteArgs {
  const TagsRouteArgs({
    this.key,
    this.scrollController,
  });

  final _i24.Key? key;

  final _i24.ScrollController? scrollController;

  @override
  String toString() {
    return 'TagsRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i20.ThemeSelectionScreen]
class ThemeSelectionRoute extends _i23.PageRouteInfo<void> {
  const ThemeSelectionRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ThemeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeSelectionRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i20.ThemeSelectionScreen();
    },
  );
}

/// generated route for
/// [_i21.UpdatesTab]
class UpdatesRoute extends _i23.PageRouteInfo<void> {
  const UpdatesRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UpdatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdatesRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i21.UpdatesTab();
    },
  );
}

/// generated route for
/// [_i22.WorkDetailsPage]
class WorkDetailsRoute extends _i23.PageRouteInfo<WorkDetailsRouteArgs> {
  WorkDetailsRoute({
    _i24.Key? key,
    required _i25.WorkEntity work,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          WorkDetailsRoute.name,
          args: WorkDetailsRouteArgs(
            key: key,
            work: work,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkDetailsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WorkDetailsRouteArgs>();
      return _i22.WorkDetailsPage(
        key: args.key,
        work: args.work,
      );
    },
  );
}

class WorkDetailsRouteArgs {
  const WorkDetailsRouteArgs({
    this.key,
    required this.work,
  });

  final _i24.Key? key;

  final _i25.WorkEntity work;

  @override
  String toString() {
    return 'WorkDetailsRouteArgs{key: $key, work: $work}';
  }
}
