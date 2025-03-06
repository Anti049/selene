import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/models/screen_tab.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/router/router.gr.dart';

@RoutePage()
class LibraryOptionsPage extends ConsumerWidget {
  const LibraryOptionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    final tabItems = [
      ScreenTab(
        title: 'Tags',
        route: const TagsRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.save),
            onPressed: () {},
            tooltip: 'Save Preset',
          ),
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {},
            tooltip: 'Reset Tags',
          ),
          IconButton(
            icon: const Icon(Symbols.edit),
            onPressed: () {},
            tooltip: 'Edit Presets',
          ),
        ],
      ),
      ScreenTab(
        title: 'Filters',
        route: const FiltersRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetFilters();
            },
            tooltip: 'Reset Filters',
          ),
        ],
      ),
      ScreenTab(
        title: 'Sort',
        route: const SortRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetSort();
            },
            tooltip: 'Reset Sort',
          ),
        ],
      ),
      ScreenTab(
        title: 'Display',
        route: const DisplayRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetDisplay();
            },
            tooltip: 'Reset Display',
          ),
        ],
      ),
    ];

    return AutoTabsRouter.tabBar(
      routes: tabItems.map((item) => item.route).toList(),
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        return BannerScaffold(
          appBar: PaddedAppBar(
            title: Text('Options'),
            actions: tabItems[router.activeIndex].actions,
            bottom: TabBar(
              controller: controller,
              tabs: tabItems.map((item) => item.tab).toList(),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
