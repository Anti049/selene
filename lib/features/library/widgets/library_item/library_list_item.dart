import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/library/widgets/library_item/info_chip.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

class LibraryListItem extends ConsumerWidget {
  const LibraryListItem({
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
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);

    return Slidable(
      child: ListTile(
        leading: IconButton(
          icon: Icon(Symbols.bookmark, color: context.scheme.primary),
          onPressed: () {},
        ),
        title: Text(
          work.title,
          style: context.text.titleMedium?.copyWith(
            color:
                selected
                    ? context.scheme.onPrimaryContainer
                    : context.scheme.onSurface,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          work.authorNames,
          style: context.text.labelSmall?.copyWith(
            color:
                selected
                    ? context.scheme.onPrimaryContainer.withValues(alpha: 0.7)
                    : context.scheme.outline,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InfoChip(
                downloadedCount:
                    preferences.downloadedBadge.get() ? work.wordCount : 0,
                unreadCount: preferences.unreadBadge.get() ? work.wordCount : 0,
                language: preferences.languageBadge.get() ? 'EN' : null,
              ),
              if (preferences.continueReadingButton.get())
                IconButton.filledTonal(
                  icon: Icon(
                    Symbols.play_arrow,
                    fill: 1.0,
                    color: context.scheme.onSecondaryContainer,
                  ),
                  onPressed: () {
                    context.router.push(ReaderRoute(work: work));
                  },
                  color: context.scheme.secondaryContainer,
                  // visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
                  visualDensity: VisualDensity.comfortable,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(EdgeInsets.all(2.0)),
                    minimumSize: WidgetStateProperty.all(Size(32.0, 32.0)),
                    // Corner rounding
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        selected: selected,
        selectedTileColor: context.scheme.surfaceContainerHigh,
        onTap: onTap,
        onLongPress: onLongPress,
        horizontalTitleGap: 4.0,
        contentPadding: EdgeInsets.only(left: 4.0, right: 8.0),
      ),
    );
  }
}
