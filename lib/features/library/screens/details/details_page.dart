import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/core/providers/data_providers.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/screens/details/widgets/action_row.dart';
import 'package:selene/features/library/screens/details/widgets/expandable_text.dart';
import 'package:selene/features/library/screens/details/widgets/tag_section.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class WorkDetailsPage extends ConsumerStatefulWidget {
  const WorkDetailsPage({super.key, required this.work});

  final WorkEntity work;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WorkDetailsPageState();
}

class _WorkDetailsPageState extends ConsumerState<WorkDetailsPage> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _scrolledToTop = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _scrolledToBottom = ValueNotifier<bool>(false);
  bool _isExpanded = false;

  late WorkEntity _work = widget.work;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  Future<void> _loadWork() async {
    final work = await ref.read(workRepositoryProvider).getWorkFromID(_work.id);
    if (work == null) {
      // Handle work not found case (e.g., show a message or navigate back)
      return;
    }
    setState(() {
      _work = work;
    });
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

  void setExpanded(expanded) {
    setState(() {
      _isExpanded = expanded;
    });
  }

  /// Callbacks for action buttons
  bool isInLibrary = false;
  bool isInPrediction = false;
  bool isTracking = false;
  bool isInWebView = false;
  void onLibraryTap() {
    // Handle library action
    // Temporarily toggle the state
    setState(() {
      isInLibrary = !isInLibrary;
    });
  }

  void onPredictionTap() {
    // Handle prediction action
    // Temporarily toggle the state
    setState(() {
      isInPrediction = !isInPrediction;
    });
  }

  void onTrackingTap() {
    // Handle tracking action
    // Temporarily toggle the state
    setState(() {
      isTracking = !isTracking;
    });
  }

  void onWebViewTap() {
    // Handle web view action
    // Temporarily toggle the state
    setState(() {
      isInWebView = !isInWebView;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fabHeight = 56.0;
    double fabPadding = 16.0;
    double bottomNavHeight = context.mediaQuery.viewPadding.bottom;

    return BannerScaffold(
      appBar: PaddedAppBar(
        title: Text(_work.title),
        actions: [
          // IconButton(icon: const Icon(Symbols.share), onPressed: () {}),
          // IconButton(icon: const Icon(Symbols.more), onPressed: () {}),
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
                  context.router.push(ReaderRoute(work: _work));
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
      body: RefreshIndicator(
        onRefresh: _loadWork,
        child: Scrollbar(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  spacing: 16.0,
                  children: [
                    // Book Cover
                    Container(
                      constraints: BoxConstraints(
                        minHeight: 200,
                        maxHeight: 200,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: AspectRatio(
                        aspectRatio: 1 / 1.6,
                        child:
                            _work.coverURL != null
                                ? Image.network(
                                  _work.coverURL ?? '',
                                  fit: BoxFit.cover,
                                  loadingBuilder: (
                                    context,
                                    child,
                                    loadingProgress,
                                  ) {
                                    if (loadingProgress == null) {
                                      return child; // Image is fully loaded
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value:
                                            loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    (loadingProgress
                                                            .expectedTotalBytes ??
                                                        1)
                                                : null,
                                      ),
                                    );
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color:
                                          context.scheme.surfaceContainerHigh,
                                      child: Icon(
                                        Symbols.broken_image,
                                        size: 64.0,
                                        color: context.scheme.onSurface,
                                      ),
                                    );
                                  },
                                )
                                : Material(
                                  color: context.scheme.surfaceContainerHigh,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Empty(
                                        style: context.text.titleLarge
                                            ?.copyWith(
                                              color: context.scheme.onSurface,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 4.0,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Book Title
                          Text(
                            _work.title,
                            style: context.text.titleLarge?.copyWith(
                              color: context.scheme.onSurface,
                            ),
                            maxLines: 2,
                          ),
                          // Book Author
                          Row(
                            spacing: 8.0,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Symbols.person,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurface,
                              ),
                              Flexible(
                                child: Text(
                                  _work.authorNames,
                                  style: context.text.labelLarge?.copyWith(
                                    color: context.scheme.onSurface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          // Book Published Date
                          Row(
                            spacing: 8.0,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Symbols.publish,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Flexible(
                                child: Text(
                                  'Published • 01/19/1994',
                                  style: context.text.labelMedium?.copyWith(
                                    color: context.scheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Book Updated/Completed Date
                          Row(
                            spacing: 8.0,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Symbols.update,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Flexible(
                                child: Text(
                                  '${_work.status == WorkStatus.completed ? 'Completed' : 'Updated'} • 01/19/1994',
                                  style: context.text.labelMedium?.copyWith(
                                    color: context.scheme.onSurfaceVariant,
                                  ),
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
              // Row of icon buttons with labels
              DetailsActionRow(
                onLibraryTap: onLibraryTap,
                isInLibrary: isInLibrary,
                onPredictionTap: onPredictionTap,
                isInPrediction: isInPrediction,
                onTrackingTap: onTrackingTap,
                isTracking: isTracking,
                onWebViewTap: onWebViewTap,
                isInWebView: isInWebView,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
                child: ExpandableText(
                  text: _work.description ?? '',
                  maxLines: 3,
                  onExpanded: setExpanded,
                ),
              ),
              // Fandom Tags
              DetailsTagSection(
                isExpanded: _isExpanded,
                tags: _work.getTagsByType(TagType.fandom),
              ),
              // Character Tags
              DetailsTagSection(
                isExpanded: _isExpanded,
                tags: _work.getTagsByType(TagType.character),
              ),
              // Relationship Tags
              DetailsTagSection(
                isExpanded: _isExpanded,
                tags: _work.getTagsByType(TagType.relationship),
              ),
              // Freeform Tags
              DetailsTagSection(
                isExpanded: _isExpanded,
                tags: _work.getTagsByType(TagType.freeform),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    '${_work.wordCount} Chapters',
                    style: context.text.titleMedium,
                  ),
                ),
              ),
              Column(
                children: [
                  for (var i = 1; i <= (_work.wordCount ?? 0); i++)
                    ListTile(
                      title: Text('Chapter $i'),
                      subtitle: Text('Chapter $i subtitle'),
                      trailing: Icon(Symbols.chevron_right),
                      onTap: () {
                        context.router.push(
                          ReaderRoute(work: _work, chapter: i),
                        );
                      },
                    ),
                ],
              ),
            ],
          ),
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
