import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/action_button.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/screens/details/widgets/expandable_text.dart';
import 'package:selene/features/library/screens/details/widgets/tag_chip.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class StoryDetailsPage extends ConsumerStatefulWidget {
  const StoryDetailsPage({super.key, required this.story});

  final Story story;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoryDetailsPageState();
}

class _StoryDetailsPageState extends ConsumerState<StoryDetailsPage> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _scrolledToTop = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _scrolledToBottom = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _scrolledToTop.dispose();
    _scrolledToBottom.dispose();
    super.dispose();
  }

  void _onScroll() {
    final scrolledToTop = _scrollController.offset <= 0;
    final scrolledToBottom =
        _scrollController.offset >= _scrollController.position.maxScrollExtent;

    // Update ValueNotifier values only if they change
    if (_scrolledToTop.value != scrolledToTop) {
      _scrolledToTop.value = scrolledToTop;
    }
    if (_scrolledToBottom.value != scrolledToBottom) {
      _scrolledToBottom.value = scrolledToBottom;
    }
  }

  bool _isExpanded = false;

  void setExpanded(expanded) {
    setState(() {
      _isExpanded = expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var tags = [
      'Tag 1',
      'Tag 2',
      'Tag 3',
      'Tag 4',
      'Tag 5',
      'Tag 6',
      'Tag 7',
      'Tag 8',
      'Tag 9',
      'Tag 10',
    ];
    double fabHeight = 56.0;
    double fabPadding = 16.0;
    double bottomNavHeight = MediaQuery.of(context).viewPadding.bottom;
    return BannerScaffold(
      appBar: PaddedAppBar(
        title: Text(widget.story.title ?? ''),
        actions: [
          IconButton(icon: const Icon(Symbols.share), onPressed: () {}),
          IconButton(icon: const Icon(Symbols.more), onPressed: () {}),
        ],
      ),
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: _scrolledToTop,
        builder: (context, scrolledToTop, child) {
          return ValueListenableBuilder<bool>(
            valueListenable: _scrolledToBottom,
            builder: (context, scrolledToBottom, child) {
              return FloatingActionButton.extended(
                onPressed: () {
                  context.router.push(ReaderRoute(story: widget.story));
                },
                label: AnimatedSize(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child:
                      scrolledToTop || scrolledToBottom
                          ? Text('Start Reading')
                          : const SizedBox(width: 0.0, height: 0.0),
                ),
                extendedIconLabelSpacing:
                    scrolledToTop || scrolledToBottom ? null : 0.0,
                extendedPadding:
                    scrolledToTop || scrolledToBottom
                        ? null
                        : EdgeInsets.all(16.0),
                icon: Icon(Symbols.play_arrow, fill: 1.0),
              );
            },
          );
        },
      ),
      body: Scrollbar(
        interactive: true,
        thickness: 8.0,
        radius: Radius.circular(4.0),
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: EdgeInsets.only(
            bottom: bottomNavHeight + fabHeight + fabPadding,
          ),
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Row(
                  children: [
                    // TODO: Add image
                    AspectRatio(
                      aspectRatio: 1 / 1.6,
                      child: Container(color: Colors.grey),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8.0,
                        children: [
                          Text(
                            widget.story.title ?? '',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 6.0,
                            children: [
                              Icon(
                                Symbols.person,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Text(
                                widget.story.author ?? '',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 6.0,
                            children: [
                              Icon(
                                Symbols.done_all,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Text(
                                'Completed • ${widget.story.title ?? ''}',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.copyWith(
                                  color: context.scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row of icon buttons with labels
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Row(
                spacing: 4.0,
                children: [
                  Expanded(
                    child: ActionButton(
                      text: 'In Library',
                      icon: Symbols.favorite,
                      filled: true,
                      color: context.scheme.primary,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ActionButton(
                      text: '26 days',
                      icon: Symbols.hourglass,
                      color: context.scheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ActionButton(
                      text: 'Tracking',
                      icon: Symbols.sync,
                      color: context.scheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ActionButton(
                      text: 'WebView',
                      icon: Symbols.public,
                      color: context.scheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ExpandableText(
                text: widget.story.description ?? '',
                maxLines: 3,
                onExpanded: setExpanded,
              ),
            ),
            // Wrap-around list of tags
            if (!_isExpanded)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      for (final tag in tags) TagChip(text: tag, onTap: () {}),
                    ],
                  ),
                ),
              ),
            if (_isExpanded)
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    spacing: 4.0,
                    runSpacing: 4.0,
                    children: [
                      for (final tag in tags) TagChip(text: tag, onTap: () {}),
                    ],
                  ),
                ),
              ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  '${widget.story.chapterCount} Chapters',
                  style: context.text.titleMedium,
                ),
              ),
            ),
            Column(
              children: [
                for (var i = 1; i <= widget.story.chapterCount!; i++)
                  ListTile(
                    title: Text('Chapter $i'),
                    subtitle: Text('Chapter $i subtitle'),
                    trailing: Icon(Symbols.chevron_right),
                    onTap: () {
                      context.router.push(
                        ReaderRoute(story: widget.story, chapter: i),
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: EdgeInsets.only(
      //       bottom: bottomNavHeight,
      //       left: fabPadding,
      //       right: fabPadding,
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         IconButton(icon: Icon(Symbols.favorite), onPressed: () {}),
      //         IconButton(icon: Icon(Symbols.share), onPressed: () {}),
      //         IconButton(icon: Icon(Symbols.more), onPressed: () {}),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
