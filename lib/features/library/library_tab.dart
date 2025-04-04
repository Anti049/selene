import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:draggable_menu/draggable_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/intent_frame.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/core/constants/animation_constants.dart';
import 'package:selene/core/providers/data_providers.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/models/library_model.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/library/providers/library_state.dart';
import 'package:selene/features/library/screens/options/display/display_tab.dart';
import 'package:selene/features/library/screens/options/filters/filters_tab.dart';
import 'package:selene/features/library/screens/options/sort/sort_tab.dart';
import 'package:selene/features/library/screens/options/tags/tags_tab.dart';
import 'package:selene/features/library/widgets/add_work_dialog.dart';
import 'package:selene/features/library/widgets/library_item/library_item_component.dart';
import 'package:selene/features/library/widgets/library_item/library_list_item.dart';
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
  final _scrollController = ScrollController();
  final DraggableMenuController _draggableMenuController =
      DraggableMenuController(); // Controller for the draggable menu

  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  // @override
  // void initState() {
  //   super.initState();

  //   // Test load an epub file
  //   final epubReader = ref.read(epubBookRepositoryProvider);
  //   epubReader
  //       .read(
  //         'C:/Users/1099996508.adm/Documents/Books/Alice in Wonderland.epub',
  //       )
  //       .then((book) {
  //         // Successfully read the book, do something with it
  //         debugPrint('Successfully read EPUB: ${book.file.path}');
  //         if (book.work == null) {
  //           return;
  //         }
  //         final workRepository = ref.read(workRepositoryProvider);
  //         workRepository.saveWork(book.work as WorkEntity);
  //       })
  //       .catchError((error) {
  //         debugPrint('Failed to read EPUB: $error');
  //       });
  // }

  // only override if this is a tab page
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    _onRefresh();
  }

  IconButton? _getLeading(BuildContext context) {
    final state = ref.watch(libraryStateProvider);
    final notifier = ref.read(libraryStateProvider.notifier);

    final selectionActive = state.maybeWhen(
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
          notifier.clearSelection();
        },
      );
    }

    return null;
  }

  Widget _getTitle(BuildContext context) {
    final notifier = ref.read(libraryStateProvider.notifier);

    return _searchActive
        ? TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            notifier.search(value);
            notifier.refresh();
          },
        )
        : const Text('Library');
  }

  List<Widget> _getActions(BuildContext context) {
    final router = AutoRouter.of(context);
    final prefs = ref.watch(libraryPreferencesProvider);
    final state = ref.watch(libraryStateProvider);
    final notifier = ref.read(libraryStateProvider.notifier);

    final selectionActive = state.maybeWhen(
      data: (data) => data.selecting,
      orElse: () => false,
    );

    return selectionActive
        ? [
          // Select All
          IconButton(
            icon: const Icon(Symbols.select_all),
            onPressed: () {
              notifier.selectAll();
            },
          ),
          // Invert Selection
          IconButton(
            icon: const Icon(Symbols.flip_to_back),
            onPressed: () {
              notifier.invertSelection();
            },
          ),
        ]
        : [
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
              label: Text(prefs.numOptionsActive.toString()),
              isLabelVisible: prefs.optionsActive,
              child: Icon(
                Symbols.filter_alt,
                color: prefs.optionsActive ? context.scheme.primary : null,
                fill: prefs.optionsActive ? 1.0 : 0.0,
              ),
            ),
            onPressed: () {
              _showOptionsSheet(context);
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

  Widget _getContent(BuildContext context, LibraryModel model) {
    final prefs = ref.watch(libraryPreferencesProvider);
    final notifier = ref.read(libraryStateProvider.notifier);

    if (model.isEmpty) {
      return const Empty(message: 'No works found.');
    }

    final children = [
      for (final item in model.libraryItems)
        switch (prefs.displayMode.get()) {
          // Handle the display mode for each item
          DisplayMode.compactGrid ||
          DisplayMode.comfortableGrid ||
          DisplayMode.coverOnlyGrid => const SizedBox(),
          DisplayMode.list => LibraryListItem(
            work: item.work,
            selected: model.isSelected(item),
            onTap: () {
              if (model.selecting) {
                notifier.toggleSelection(item);
              } else {
                context.router.push(WorkDetailsRoute(work: item.work));
              }
            },
            onLongPress: () {
              if (model.selecting) {
                notifier.toggleRangeSelection(item);
              } else {
                notifier.toggleSelection(item);
              }
            },
            onSwipeRight: (context) {},
            onSwipeLeft: (context) {},
          ),
          DisplayMode.componentList => LibraryItemComponent(
            work: item.work,
            selected: model.isSelected(item),
            onTap: () {
              if (model.selecting) {
                notifier.toggleSelection(item);
              } else {
                context.router.push(WorkDetailsRoute(work: item.work));
              }
            },
            onLongPress: () {
              if (model.selecting) {
                notifier.toggleRangeSelection(item);
              } else {
                notifier.toggleSelection(item);
              }
            },
            onSwipeRight: (context) {},
            onSwipeLeft: (context) {},
          ),
        },
      SizedBox(height: kFloatingActionButtonMargin * 1.5 + 56.0),
    ];

    return Scrollbar(
      controller: _scrollController,
      interactive: true,
      thickness: 4.0,
      radius: const Radius.circular(4.0),
      trackVisibility: true,
      child: switch (prefs.displayMode.get()) {
        DisplayMode.compactGrid ||
        DisplayMode.comfortableGrid ||
        DisplayMode.coverOnlyGrid => Empty(
          message: '"${prefs.displayMode.get().label}" Not Implemented',
          subtitle: 'Please select a different display mode.',
        ),
        DisplayMode.list || DisplayMode.componentList => Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: ListView(
            controller: _scrollController,
            shrinkWrap: true,
            children: children,
          ),
        ),
      },
    );
  }

  Widget _getBottomSheet(BuildContext context) {
    final state = ref.watch(libraryStateProvider);
    final workRepository = ref.read(workRepositoryProvider);

    return AnimatedVisibility(
      visible: state.maybeWhen(
        data: (data) => data.selecting,
        orElse: () => false,
      ),
      enter: slideInVertically(curve: kAnimationCurve),
      enterDuration: kAnimationDuration,
      exit: slideOutVertically(curve: kAnimationCurve),
      exitDuration: kAnimationDuration,
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
              onPressed: () async {
                final selectedWorks =
                    state.maybeWhen(
                          data:
                              (data) =>
                                  data.selectedItems
                                      .map((e) => e.work.id)
                                      .toList(),
                          orElse: () => [],
                        )
                        as List<String>;
                workRepository.deleteWorks(selectedWorks);
                _refreshKey.currentState?.show();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {
    final notifier = ref.read(libraryStateProvider.notifier);
    await notifier.refresh();
  }

  void _showOptionsSheet(BuildContext context) {
    DraggableMenu.open(
      context,
      DraggableMenu(
        curve: kAnimationCurve,
        animationDuration: kAnimationDuration,
        controller: _draggableMenuController,
        levels: [
          DraggableMenuLevel.ratio(
            ratio: 0.6,
          ), // Initial height of the menu (60% of screen height)
          DraggableMenuLevel.ratio(ratio: 1.0),
        ],
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'Filter'),
                  Tab(text: 'Sort'),
                  Tab(text: 'Display'),
                  Tab(text: 'Tags'),
                ],
                onTap: (value) {
                  if (value == 3) {
                    _draggableMenuController.animateTo(1);
                  }
                },
              ),
              Expanded(
                // TabBarView needs to fill the remaining space
                child: TabBarView(
                  children: [
                    FiltersTab(), // Filter options tab
                    SortTab(), // Sort options tab
                    DisplayTab(), // Display options tab
                    TagsTab(), // Tags options tab
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Get providers
    final state = ref.watch(libraryStateProvider);
    final notifier = ref.read(libraryStateProvider.notifier);
    final workRepository = ref.read(workRepositoryProvider);

    return PopScope(
      canPop:
          !_searchActive &&
          !state.maybeWhen(data: (data) => data.selecting, orElse: () => false),
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          setState(() {
            _searchActive = false;
            notifier.clearSelection();
          });
        }
      },
      child: BannerScaffold(
        appBar: PaddedAppBar(
          leading: _getLeading(context),
          title: _getTitle(context),
          actions: _getActions(context),
        ),
        body: state.when(
          loading: () => Empty(message: 'Loading...'),
          error: (error, stackTrace) {
            debugPrintStack(label: error.toString(), stackTrace: stackTrace);
            return IntentFrame(
              refreshKey: _refreshKey,
              onRefresh: _onRefresh,
              child: Empty(
                message: 'An error occurred!',
                subtitle: error.toString(),
              ),
            );
          },
          data: (model) {
            return IntentFrame(
              refreshKey: _refreshKey,
              onRefresh: _onRefresh,
              child: _getContent(context, model),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final WorkEntity? newWork = await showDialog<WorkEntity?>(
              context: context,
              builder: (context) {
                return AddWorkDialog();
              },
            );

            if (newWork != null && context.mounted) {
              try {
                await workRepository.saveWork(newWork);
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Work added successfully!'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                notifier.refresh();
              } catch (e) {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to add work: $e')),
                );
              }
            }
          },
          child: const Icon(Symbols.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: _getBottomSheet(context),
      ),
    );
  }
}
