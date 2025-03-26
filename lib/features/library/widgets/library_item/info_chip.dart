import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/utils/theming.dart';

class InfoChip extends ConsumerWidget {
  const InfoChip({
    super.key,
    this.downloadedCount,
    this.unreadCount,
    this.language,
  });

  final int? unreadCount;
  final int? downloadedCount;
  final String? language;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chip(
      label: Row(
        children: [
          if (downloadedCount != null && downloadedCount! > 0)
            Container(
              padding: const EdgeInsets.all(4.0),
              color: context.scheme.secondary,
              child: Text(
                downloadedCount.toString(),
                style: context.text.labelMedium?.copyWith(
                  color: context.scheme.onSecondary,
                ),
              ),
            ),
          if (unreadCount != null && unreadCount! > 0)
            Container(
              padding: const EdgeInsets.all(4.0),
              color: context.scheme.primary,
              child: Text(
                unreadCount.toString(),
                style: context.text.labelMedium?.copyWith(
                  color: context.scheme.onPrimary,
                ),
              ),
            ),
          if (language != null)
            Container(
              padding: const EdgeInsets.all(4.0),
              color: context.scheme.tertiary,
              child: Text(
                language!,
                style: context.text.labelMedium?.copyWith(
                  color: context.scheme.onTertiary,
                ),
              ),
            ),
        ],
      ),
      labelPadding: EdgeInsets.zero,
      backgroundColor: context.scheme.primary,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide.none,
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
    );
  }
}
