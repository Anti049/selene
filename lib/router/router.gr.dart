// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;
import 'package:selene/domain/entities/work_entity.dart' as _i23;
import 'package:selene/features/browse/browse_tab.dart' as _i3;
import 'package:selene/features/browse/screens/extensions/extensions_tab.dart'
    as _i5;
import 'package:selene/features/browse/screens/migrate/migrate_tab.dart'
    as _i11;
import 'package:selene/features/browse/screens/sources/sources_tab.dart'
    as _i16;
import 'package:selene/features/history/history_tab.dart' as _i7;
import 'package:selene/features/library_old/library_tab.dart' as _i9;
import 'package:selene/features/library_old/screens/details/details_page.dart'
    as _i20;
import 'package:selene/features/library_old/screens/options/display/display_tab.dart'
    as _i4;
import 'package:selene/features/library_old/screens/options/filters/filters_tab.dart'
    as _i6;
import 'package:selene/features/library_old/screens/options/library_options_page.dart'
    as _i8;
import 'package:selene/features/library_old/screens/options/sort/sort_tab.dart'
    as _i15;
import 'package:selene/features/library_old/screens/options/tags/tags_tab.dart'
    as _i17;
import 'package:selene/features/main/main_screen.dart' as _i10;
import 'package:selene/features/more/more_tab.dart' as _i12;
import 'package:selene/features/reader/reader_page.dart' as _i13;
import 'package:selene/features/settings/screens/about/about_page.dart' as _i1;
import 'package:selene/features/settings/screens/appearance/appearance_page.dart'
    as _i2;
import 'package:selene/features/settings/screens/appearance/themes/theme_selection_page.dart'
    as _i18;
import 'package:selene/features/settings/settings_page.dart' as _i14;
import 'package:selene/features/updates/updates_tab.dart' as _i19;

/// generated route for
/// [_i1.AboutSettingsPage]
class AboutSettingsRoute extends _i21.PageRouteInfo<void> {
  const AboutSettingsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          AboutSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutSettingsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i21.PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [_i3.BrowseTab]
class BrowseRoute extends _i21.PageRouteInfo<void> {
  const BrowseRoute({List<_i21.PageRouteInfo>? children})
      : super(
          BrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowseRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i3.BrowseTab();
    },
  );
}

/// generated route for
/// [_i4.DisplayTab]
class DisplayRoute extends _i21.PageRouteInfo<DisplayRouteArgs> {
  DisplayRoute({
    _i22.Key? key,
    _i22.ScrollController? scrollController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          DisplayRoute.name,
          args: DisplayRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'DisplayRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<DisplayRouteArgs>(orElse: () => const DisplayRouteArgs());
      return _i4.DisplayTab(
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

  final _i22.Key? key;

  final _i22.ScrollController? scrollController;

  @override
  String toString() {
    return 'DisplayRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i5.ExtensionsTab]
class ExtensionsRoute extends _i21.PageRouteInfo<void> {
  const ExtensionsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ExtensionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExtensionsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i5.ExtensionsTab();
    },
  );
}

/// generated route for
/// [_i6.FiltersTab]
class FiltersRoute extends _i21.PageRouteInfo<FiltersRouteArgs> {
  FiltersRoute({
    _i22.Key? key,
    _i22.ScrollController? scrollController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          FiltersRoute.name,
          args: FiltersRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'FiltersRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<FiltersRouteArgs>(orElse: () => const FiltersRouteArgs());
      return _i6.FiltersTab(
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

  final _i22.Key? key;

  final _i22.ScrollController? scrollController;

  @override
  String toString() {
    return 'FiltersRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i7.HistoryTab]
class HistoryRoute extends _i21.PageRouteInfo<void> {
  const HistoryRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i7.HistoryTab();
    },
  );
}

/// generated route for
/// [_i8.LibraryOptionsPage]
class LibraryOptionsRoute extends _i21.PageRouteInfo<void> {
  const LibraryOptionsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LibraryOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryOptionsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i8.LibraryOptionsPage();
    },
  );
}

/// generated route for
/// [_i9.LibraryTab]
class LibraryRoute extends _i21.PageRouteInfo<void> {
  const LibraryRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i9.LibraryTab();
    },
  );
}

/// generated route for
/// [_i10.MainScreen]
class MainRoute extends _i21.PageRouteInfo<void> {
  const MainRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i10.MainScreen();
    },
  );
}

/// generated route for
/// [_i11.MigrateTab]
class MigrateRoute extends _i21.PageRouteInfo<void> {
  const MigrateRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MigrateRoute.name,
          initialChildren: children,
        );

  static const String name = 'MigrateRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i11.MigrateTab();
    },
  );
}

/// generated route for
/// [_i12.MoreTab]
class MoreRoute extends _i21.PageRouteInfo<void> {
  const MoreRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i12.MoreTab();
    },
  );
}

/// generated route for
/// [_i13.ReaderPage]
class ReaderRoute extends _i21.PageRouteInfo<ReaderRouteArgs> {
  ReaderRoute({
    _i22.Key? key,
    required _i23.WorkEntity work,
    int? chapter,
    List<_i21.PageRouteInfo>? children,
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

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReaderRouteArgs>();
      return _i13.ReaderPage(
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

  final _i22.Key? key;

  final _i23.WorkEntity work;

  final int? chapter;

  @override
  String toString() {
    return 'ReaderRouteArgs{key: $key, work: $work, chapter: $chapter}';
  }
}

/// generated route for
/// [_i14.SettingsPage]
class SettingsRoute extends _i21.PageRouteInfo<void> {
  const SettingsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i14.SettingsPage();
    },
  );
}

/// generated route for
/// [_i15.SortTab]
class SortRoute extends _i21.PageRouteInfo<SortRouteArgs> {
  SortRoute({
    _i22.Key? key,
    _i22.ScrollController? scrollController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          SortRoute.name,
          args: SortRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'SortRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SortRouteArgs>(orElse: () => const SortRouteArgs());
      return _i15.SortTab(
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

  final _i22.Key? key;

  final _i22.ScrollController? scrollController;

  @override
  String toString() {
    return 'SortRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i16.SourcesTab]
class SourcesRoute extends _i21.PageRouteInfo<void> {
  const SourcesRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SourcesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SourcesRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i16.SourcesTab();
    },
  );
}

/// generated route for
/// [_i17.TagsTab]
class TagsRoute extends _i21.PageRouteInfo<TagsRouteArgs> {
  TagsRoute({
    _i22.Key? key,
    _i22.ScrollController? scrollController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          TagsRoute.name,
          args: TagsRouteArgs(
            key: key,
            scrollController: scrollController,
          ),
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<TagsRouteArgs>(orElse: () => const TagsRouteArgs());
      return _i17.TagsTab(
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

  final _i22.Key? key;

  final _i22.ScrollController? scrollController;

  @override
  String toString() {
    return 'TagsRouteArgs{key: $key, scrollController: $scrollController}';
  }
}

/// generated route for
/// [_i18.ThemeSelectionScreen]
class ThemeSelectionRoute extends _i21.PageRouteInfo<void> {
  const ThemeSelectionRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ThemeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeSelectionRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i18.ThemeSelectionScreen();
    },
  );
}

/// generated route for
/// [_i19.UpdatesTab]
class UpdatesRoute extends _i21.PageRouteInfo<void> {
  const UpdatesRoute({List<_i21.PageRouteInfo>? children})
      : super(
          UpdatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdatesRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i19.UpdatesTab();
    },
  );
}

/// generated route for
/// [_i20.WorkDetailsPage]
class WorkDetailsRoute extends _i21.PageRouteInfo<WorkDetailsRouteArgs> {
  WorkDetailsRoute({
    _i22.Key? key,
    required _i23.WorkEntity work,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          WorkDetailsRoute.name,
          args: WorkDetailsRouteArgs(
            key: key,
            work: work,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkDetailsRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WorkDetailsRouteArgs>();
      return _i20.WorkDetailsPage(
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

  final _i22.Key? key;

  final _i23.WorkEntity work;

  @override
  String toString() {
    return 'WorkDetailsRouteArgs{key: $key, work: $work}';
  }
}
