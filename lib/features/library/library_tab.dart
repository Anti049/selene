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
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/router/router.gr.dart';
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
        TickerProviderStateMixin<LibraryTab> {
  @override
  bool get wantKeepAlive => true;

  bool _searchActive = false;
  bool _selectionActive = false;

  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  IconButton? _getLeading(BuildContext context) {
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

    if (_selectionActive) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          setState(() {
            _selectionActive = false;
          });
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

    switch (_selectionActive) {
      case true:
        return [
          // Select All
          IconButton(icon: const Icon(Symbols.select_all), onPressed: () {}),
          // Invert Selection
          IconButton(icon: const Icon(Symbols.flip_to_back), onPressed: () {}),
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
    // Simulate network fetch or database query
    await Future.delayed(Duration(seconds: 2));
    await libraryNotifier.refresh();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Get providers
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);

    // TODO: Remove after testing
    final testDescription =
        'Lorem ipsum odor amet, consectetuer adipiscing elit. Diam habitant pulvinar semper viverra nisl tempor. Mauris elementum duis parturient ante; eleifend rutrum risus. Placerat eleifend fames fringilla; cursus iaculis mollis! Netus tristique aliquam nascetur condimentum sit maximus. Congue litora diam nulla dictum placerat donec pharetra. Ut per laoreet pretium hac interdum placerat. Felis purus bibendum inceptos hac laoreet ipsum nibh. Fringilla aenean pellentesque nunc morbi ridiculus ultrices litora erat lacinia. \nAliquam curae dis, ligula ultricies eros mattis dis himenaeos luctus. Curabitur hac in aenean felis; placerat non. Mauris cursus turpis pharetra dolor ullamcorper neque eleifend. Penatibus mattis maecenas, massa nascetur at lacus ultrices ligula. Eleifend gravida rutrum proin inceptos suspendisse. Etiam ut fermentum suspendisse quis ut eros nibh nascetur. Tempus rutrum mi; aliquam amet id conubia adipiscing. Arcu consectetur hendrerit, posuere class turpis adipiscing. Adipiscing accumsan tellus duis inceptos scelerisque placerat maximus integer. Ut auctor mollis amet nisl lobortis mattis.\nNascetur duis semper morbi mus venenatis a netus massa. Nisi libero vehicula vehicula vestibulum at fusce vitae vitae. Felis penatibus varius augue litora vivamus libero placerat. Luctus molestie commodo placerat est dignissim turpis aptent. Faucibus rhoncus lobortis vulputate, cubilia dictum maximus quisque. Ipsum facilisis mollis duis montes vulputate malesuada, iaculis ac aliquet. Consequat ullamcorper molestie eros nunc conubia vitae sit sagittis.\nIpsum etiam scelerisque quis consequat tempor convallis elementum varius tempus. Sodales torquent tellus tempor est integer conubia scelerisque cubilia. Magnis natoque varius eros orci cras aenean praesent venenatis porta. Nascetur netus tempor hendrerit convallis orci habitant conubia tristique dignissim. Cursus volutpat justo tempor aliquet cursus. Euismod conubia sodales ac habitant eu donec. Curae velit sit interdum nec mus sociosqu aenean orci. Facilisis vitae maecenas sociosqu diam; cubilia vivamus convallis quam.\nNascetur ipsum taciti tristique ligula eleifend est. Facilisis curae sit aliquam cursus convallis etiam maecenas interdum. Taciti potenti potenti; posuere commodo aliquet donec. Efficitur facilisis donec ligula penatibus maximus dolor neque. Vivamus id volutpat vitae himenaeos imperdiet, orci sollicitudin. Metus lacinia fames sit tempor gravida diam phasellus. Tristique nec himenaeos rutrum; aliquam neque nostra malesuada. Potenti ante tempor ipsum posuere; sollicitudin ut rutrum conubia.';

    return PopScope(
      canPop: !_searchActive,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          setState(() {
            _searchActive = false;
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
          loading: () => const Empty(message: 'Loading...'),
          error: (error, stackTrace) {
            debugPrintStack(label: error.toString(), stackTrace: stackTrace);
            return Empty(message: error.toString());
          },
          data: (libraryModel) {
            if (libraryModel.isEmpty) {
              return SmartRefreshIndicator(
                refreshKey: _refreshKey,
                onRefresh: _onRefresh,
                child: Empty(message: 'No works found.'),
              );
            }

            return Empty(message: 'Library not yet implemented.');
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final story = Story(
              title: 'New Story',
              url: 'https://example.com',
              description: testDescription,
            );
            context.router.push(StoryDetailsRoute(story: story));
          },
          child: const Icon(Symbols.add),
        ),
      ),
    );
  }
}
