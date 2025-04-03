import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/theming.dart';

class LibraryItemComponent extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color:
                selected
                    ? ElevationOverlay.applySurfaceTint(
                      context.scheme.surfaceContainer,
                      context.scheme.primary,
                      8.0,
                    )
                    : context.scheme.surfaceContainer,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16,
                  children: [
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
                            Text(
                              work.authorNames,
                              style: context.text.labelSmall?.copyWith(
                                color:
                                    selected
                                        ? context.scheme.onPrimaryContainer
                                            .withValues(alpha: 0.7)
                                        : context.scheme.outline,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Symbols.bookmark),
                          color: context.scheme.tertiary,
                          onPressed: () {},
                        ),
                        IconButton.filled(
                          icon: Icon(Symbols.play_arrow, fill: 1.0),
                          onPressed: () {
                            context.router.push(ReaderRoute(work: work));
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
            ],
          ),
        ),
      ),
    );
  }
}
