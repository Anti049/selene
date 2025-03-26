import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/common/widgets/refresh.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/library/providers/library_state.dart';
import 'package:selene/features/library/widgets/library_item/library_list_item.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/enums.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab>
    with
        AutomaticKeepAliveClientMixin<LibraryTab>,
        TickerProviderStateMixin<LibraryTab>,
        AutoRouteAwareStateMixin<LibraryTab> {
  @override
  bool get wantKeepAlive => true;

  bool _searchActive = false;

  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  // only override if this is a tab page
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    _onRefresh();
  }

  IconButton? _getLeading(BuildContext context) {
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);

    final selectionActive = libraryState.maybeWhen(
      data: (data) => data.selecting,
      orElse: () => false,
    );

    if (_searchActive) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          setState(() {
            _searchActive = false;
          });
        },
      );
    }

    if (selectionActive) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          libraryNotifier.clearSelection();
        },
      );
    }

    return null;
  }

  List<Widget> _getActions(BuildContext context) {
    final router = AutoRouter.of(context);
    final preferences = ref.watch(libraryPreferencesProvider);
    final optionsActive = preferences.optionsActive;
    final numOptionsActive = preferences.numOptionsActive;
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);

    final selectionActive = libraryState.maybeWhen(
      data: (data) => data.selecting,
      orElse: () => false,
    );

    switch (selectionActive) {
      case true:
        return [
          // Select All
          IconButton(
            icon: const Icon(Symbols.select_all),
            onPressed: () {
              libraryNotifier.selectAll();
            },
          ),
          // Invert Selection
          IconButton(
            icon: const Icon(Symbols.flip_to_back),
            onPressed: () {
              libraryNotifier.invertSelection();
            },
          ),
        ];
      case false:
        return [
          if (!_searchActive)
            IconButton(
              onPressed: () {
                setState(() {
                  _searchActive = true;
                });
              },
              icon: const Icon(Symbols.search),
            ),
          IconButton(
            icon: Badge(
              label: Text(numOptionsActive.toString()),
              isLabelVisible: optionsActive,
              child: Icon(
                Symbols.filter_alt,
                color: optionsActive ? context.scheme.primary : null,
                fill: optionsActive ? 1.0 : 0.0,
              ),
            ),
            onPressed: () {
              router.push(const LibraryOptionsRoute());
            },
          ),
          const SizedBox(),
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              _refreshKey.currentState?.show();
            },
            tooltip: 'Update Library',
          ),
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {},
            tooltip: 'Update Categories',
          ),
          IconButton(
            icon: const Icon(Symbols.shuffle),
            onPressed: () {},
            tooltip: 'Open Random Work',
          ),
          const Divider(),
          IconButton(
            icon: const Icon(Symbols.settings),
            onPressed: () {
              router.push(const LibrarySettingsRoute());
            },
            tooltip: 'Library Settings',
          ),
        ];
    }
  }

  Future<void> _onRefresh() async {
    final libraryNotifier = ref.read(libraryStateProvider.notifier);
    await libraryNotifier.refresh();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Get providers
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    return PopScope(
      canPop:
          !_searchActive &&
          !libraryState.maybeWhen(
            data: (data) => data.selecting,
            orElse: () => false,
          ),
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          setState(() {
            _searchActive = false;
            libraryNotifier.clearSelection();
          });
        }
      },
      child: BannerScaffold(
        appBar: PaddedAppBar(
          title:
              _searchActive
                  ? TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      libraryNotifier.search(value);
                      libraryNotifier.refresh();
                    },
                  )
                  : const Text('Library'),
          leading: _getLeading(context),
          actions: _getActions(context),
        ),
        body: libraryState.when(
          loading: () => Empty(message: 'Loading...'),
          error: (error, stackTrace) {
            debugPrintStack(label: error.toString(), stackTrace: stackTrace);
            return SmartRefreshIndicator(
              refreshKey: _refreshKey,
              onRefresh: _onRefresh,
              child: Empty(
                message: 'An error occurred!',
                subtitle: error.toString(),
              ),
            );
          },
          data: (libraryModel) {
            if (libraryModel.isEmpty) {
              return SmartRefreshIndicator(
                refreshKey: _refreshKey,
                onRefresh: _onRefresh,
                child: Empty(message: 'No works found.'),
              );
            }

            bool isList =
                libraryPreferences.displayMode.get() == DisplayMode.list;

            if (isList) {
              return RefreshIndicator(
                key: _refreshKey,
                onRefresh: _onRefresh,
                child: Scrollbar(
                  interactive: true,
                  thickness: 8.0,
                  radius: Radius.circular(4.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (final item in libraryModel.libraryItems)
                        LibraryListItem(
                          story: item.story,
                          selected: libraryModel.isSelected(item),
                          onTap: () {
                            if (libraryModel.selecting) {
                              libraryNotifier.toggleSelection(item);
                              return;
                            }
                            context.router.push(
                              StoryDetailsRoute(story: item.story),
                            );
                          },
                          onLongPress: () {
                            if (libraryModel.selecting) {
                              libraryNotifier.toggleRangeSelection(item);
                              return;
                            }
                            libraryNotifier.toggleSelection(item);
                          },
                        ),
                      // Padding to clear the FAB
                      const SizedBox(height: 56.0 + 16.0),
                    ],
                  ),
                ),
              );
            }

            return SmartRefreshIndicator(
              refreshKey: _refreshKey,
              onRefresh: _onRefresh,
              child: Empty(
                message:
                    '"${libraryPreferences.displayMode.get().label}" Not Implemented',
                subtitle: 'Please select a different display mode.',
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            libraryPreferences.displayMode.cycle(DisplayMode.values);
          },
          child: const Icon(Symbols.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: AnimatedVisibility(
          visible: libraryState.maybeWhen(
            data: (data) => data.selecting,
            orElse: () => false,
          ),
          enter: slideInVertically(curve: Curves.easeInOutCubic),
          enterDuration: const Duration(milliseconds: 200),
          exit: slideOutVertically(curve: Curves.easeInOutCubic),
          exitDuration: const Duration(milliseconds: 200),
          child: BottomAppBar(
            color: context.scheme.surfaceContainerLow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Symbols.label),
                  tooltip: 'Set Category',
                  onPressed: () {
                    // Handle archive action
                  },
                ),
                IconButton(
                  icon: const Icon(Symbols.done_all),
                  tooltip: 'Mark as Read',
                  onPressed: () {
                    // Handle share action
                  },
                ),
                IconButton(
                  icon: const Icon(Symbols.remove_done),
                  tooltip: 'Mark as Unread',
                  onPressed: () {
                    // Handle share action
                  },
                ),
                IconButton(
                  icon: const Icon(Symbols.download),
                  tooltip: 'Download',
                  onPressed: () {
                    // Handle share action
                  },
                ),
                IconButton(
                  icon: const Icon(Symbols.delete),
                  tooltip: 'Delete',
                  onPressed: () {
                    // Handle share action
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
