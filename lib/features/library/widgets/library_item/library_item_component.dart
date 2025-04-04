import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/core/constants/animation_constants.dart';
import 'package:selene/core/providers/data_providers.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/library/screens/details/widgets/tag_chip.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

class LibraryItemComponent extends ConsumerStatefulWidget {
  const LibraryItemComponent({
    super.key,
    required this.work,
    required this.selected,
    required this.onTap,
    required this.onLongPress,
    required this.onSwipeRight,
    required this.onSwipeLeft,
  });

  final WorkEntity work;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final Function(BuildContext) onSwipeRight;
  final Function(BuildContext) onSwipeLeft;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LibraryItemComponentState();
}

class _LibraryItemComponentState extends ConsumerState<LibraryItemComponent> {
  final GlobalKey _authorNamesKey = GlobalKey(); // Add this key

  bool _isExpanded = false;
  String _authorText = '';
  late WorkEntity _work = widget.work;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      // Load the work details asynchronously after the first frame
      await _loadWork();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _calculateTruncations();
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
    // _calculateTruncations();
  }

  void _calculateTruncations() {
    final authorNames = widget.work.authorNames;
    final authors = widget.work.authors;
    bool tooManyAuthors = false;
    int numExtraAuthors = 0;

    if (authorNames.isEmpty || authors.isEmpty) {
      return;
    }

    // Get the width of the Text widget
    final RenderBox? renderBox =
        _authorNamesKey.currentContext?.findRenderObject() as RenderBox?;
    final maxWidth = renderBox?.size.width ?? double.infinity;

    // Create a TextPainter to measure the text
    final textPainter = TextPainter(
      text: TextSpan(
        text: authorNames,
        style: context.text.labelSmall, // Use the same style as in the widget
      ),
      maxLines: 1, // Limit to one line
      textDirection: TextDirection.ltr,
    );

    // Set the layout constraints
    textPainter.layout(maxWidth: maxWidth);

    // Check if the text overflows
    if (textPainter.didExceedMaxLines) {
      tooManyAuthors = true;

      // Calculate the number of authors that fit
      int overflowCount = 0;

      for (int i = 0; i < authors.length; i++) {
        final testText = authors
            .sublist(0, i + 1)
            .map((author) => author.name)
            .join(', ');
        final andMoreText =
            i < authors.length - 1
                ? ', and ${authors.length - i - 1} more'
                : '';
        final fullTestText = '$testText$andMoreText';
        textPainter.text = TextSpan(
          text: fullTestText,
          style: context.text.labelSmall,
        );
        textPainter.layout(maxWidth: maxWidth);

        if (textPainter.didExceedMaxLines) {
          overflowCount = authors.length - i;
          break;
        }
      }

      numExtraAuthors = overflowCount;
    } else {
      tooManyAuthors = false;
      numExtraAuthors = 0;
    }

    final visibleAuthorNames =
        tooManyAuthors
            ? authors
                .sublist(0, authors.length - numExtraAuthors)
                .map((author) => author.name)
                .join(', ')
            : authorNames;

    final showComma = authors.length > 2;
    final authorNamesWithComma =
        tooManyAuthors && numExtraAuthors > 0
            ? '$visibleAuthorNames${showComma ? ',' : ''} and $numExtraAuthors more'
            : visibleAuthorNames;

    setState(() {
      _authorText = tooManyAuthors ? authorNamesWithComma : authorNames;
    });
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  List<List<TagEntity>> get _sortedTags {
    final prefs = ref.watch(libraryPreferencesProvider);

    final List<List<TagEntity>> sortedTags = [];

    // Separate tags by type for sorting purposes
    final tags = widget.work.tags;
    if (tags.isEmpty) {
      return [];
    }
    // Sort tags by type and then by name
    for (final type in TagType.values) {
      final showTags = switch (type) {
        TagType.info => true,
        TagType.fandom => true,
        TagType.character => prefs.showCharacterTags.get(),
        TagType.friendship => prefs.showFriendshipTags.get(),
        TagType.relationship => prefs.showRelationshipTags.get(),
        TagType.freeform => prefs.showFreeformTags.get(),
        _ => false,
      };
      final typeTags = tags.where((tag) => tag.type == type).toList();
      // Only sort if not info or freeform tags, as they should maintain their order
      typeTags.sort((a, b) {
        // Sort by name for all types except info and freeform
        if (type == TagType.info || type == TagType.freeform) {
          return 0; // Maintain original order for info and freeform
        }
        return a.name.compareTo(b.name);
      });
      if (typeTags.isNotEmpty && showTags) {
        sortedTags.add(typeTags);
      }
    }

    return sortedTags;
  }

  @override
  Widget build(BuildContext context) {
    final prefs = ref.watch(libraryPreferencesProvider);

    // _calculateTruncations();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color:
                widget.selected
                    ? ElevationOverlay.applySurfaceTint(
                      context.scheme.surfaceContainerHigh,
                      context.scheme.primary,
                      8.0,
                    )
                    : context.scheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(12.0, 8.0, 16.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16,
                  children: [
                    if (widget.selected)
                      IconButton(
                        icon: Icon(
                          Symbols.circle,
                          fill:
                              widget.selected
                                  ? 1.0
                                  : 0.0, // Fill icon based on selection
                          color:
                              widget.selected
                                  ? context.scheme.onPrimaryContainer
                                  : context.scheme.onSurfaceVariant,
                          size: 24.0,
                        ),
                        onPressed: () {
                          // Handle circle icon tap, if needed
                          widget.onSwipeLeft(
                            context,
                          ); // Example action for left swipe
                        },
                      ),
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 2,
                          children: [
                            Text(
                              widget.work.title,
                              style: context.text.titleMedium?.copyWith(
                                color:
                                    widget.selected
                                        ? context.scheme.onPrimaryContainer
                                        : context.scheme.onSurface,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              spacing: 8.0,
                              children: [
                                Icon(
                                  Symbols.collections_bookmark,
                                  fill: 1.0,
                                  color:
                                      widget.selected
                                          ? context.scheme.onPrimaryContainer
                                              .withValues(alpha: 0.7)
                                          : context.scheme.onSurfaceVariant,
                                  size: 16.0,
                                ),
                                Flexible(
                                  child: Text(
                                    'Fandom Name', // Placeholder for actual fandom name or other info
                                    style: context.text.labelMedium?.copyWith(
                                      color:
                                          widget.selected
                                              ? context
                                                  .scheme
                                                  .onPrimaryContainer
                                                  .withValues(alpha: 0.7)
                                              : context.scheme.onSurfaceVariant,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 8.0,
                              children: [
                                Icon(
                                  Symbols.person,
                                  fill: 1.0,
                                  color:
                                      widget.selected
                                          ? context.scheme.onPrimaryContainer
                                              .withValues(alpha: 0.7)
                                          : context.scheme.onSurfaceVariant,
                                  size: 16.0,
                                ),
                                Flexible(
                                  child: Container(
                                    key: _authorNamesKey, // Assign the key here
                                    child: Text(
                                      widget.work.authorNames,
                                      style: context.text.labelSmall?.copyWith(
                                        color:
                                            widget.selected
                                                ? context
                                                    .scheme
                                                    .onPrimaryContainer
                                                    .withValues(alpha: 0.7)
                                                : context
                                                    .scheme
                                                    .onSurfaceVariant,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8.0,
                      children: [
                        IconButton(
                          icon: Icon(
                            _isExpanded
                                ? Symbols.keyboard_arrow_up
                                : Symbols.keyboard_arrow_down,
                          ),
                          onPressed: _toggleExpanded,
                        ),
                        if (prefs.continueReadingButton.get())
                          IconButton.filled(
                            icon: Icon(Symbols.play_arrow, fill: 1.0),
                            onPressed: () {
                              context.router.push(
                                ReaderRoute(work: widget.work),
                              );
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              LinearProgressIndicator(
                value: 0.7,
                backgroundColor: context.scheme.outlineVariant,
                color: context.scheme.primary,
                minHeight: 4,
              ),
              AnimatedVisibility(
                visible: _isExpanded,
                enter: expandVertically(curve: kAnimationCurve),
                enterDuration: kAnimationDuration,
                exit: shrinkVertically(curve: kAnimationCurve),
                exitDuration: kAnimationDuration,
                child: Container(
                  width: double.infinity,
                  color: context.scheme.surfaceContainer,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4.0,
                    children: [
                      if (_sortedTags.isNotEmpty)
                        ..._sortedTags.map(
                          (tags) => Wrap(
                            spacing: 4.0,
                            runSpacing: 4.0,
                            children:
                                tags
                                    .map(
                                      (tag) => TagChip(
                                        tag: TagEntity(
                                          name: tag.name,
                                          type: tag.type,
                                        ),
                                        onTap:
                                            () {}, // Handle tag tap if needed
                                      ),
                                    )
                                    .toList(),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
