import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/library/widgets/library_item/info_chip.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

class LibraryListItem extends ConsumerWidget {
  const LibraryListItem({
    super.key,
    required this.story,
    required this.selected,
    required this.onTap,
    required this.onLongPress,
  });

  final Story story;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);

    return ListTile(
      leading: IconButton(
        icon: Icon(Symbols.bookmark, color: context.scheme.primary),
        onPressed: () {},
      ),
      title: Text(story.title ?? ''),
      subtitle: Text(story.author ?? ''),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InfoChip(
            downloadedCount:
                preferences.downloadedBadge.get() ? story.chapterCount : 0,
            unreadCount: preferences.unreadBadge.get() ? story.chapterCount : 0,
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
                context.router.push(ReaderRoute(story: story));
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
      selected: selected,
      selectedTileColor: context.scheme.surfaceContainerHigh,
      onTap: onTap,
      onLongPress: onLongPress,
      horizontalTitleGap: 4.0,
      contentPadding: EdgeInsets.only(left: 4.0, right: 8.0),
    );
  }
}
