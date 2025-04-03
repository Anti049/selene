import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/utils/theming.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.tag, this.onTap});

  final TagEntity tag;
  final void Function()? onTap;

  IconData? get icon {
    return switch (tag.type) {
      TagType.character => Symbols.person,
      TagType.fandom => Symbols.auto_stories,
      TagType.relationship => Symbols.favorite,
      TagType.freeform => null,
      TagType.other => null,
    };
  }

  Color backgroundColor(BuildContext context) {
    return switch (tag.type) {
      TagType.character => context.scheme.tertiaryContainer,
      TagType.fandom => context.scheme.primaryContainer,
      TagType.relationship => context.scheme.secondaryContainer,
      _ => context.scheme.surfaceContainer,
    };
  }

  Color textColor(BuildContext context) {
    return switch (tag.type) {
      TagType.character => context.scheme.onTertiaryContainer,
      TagType.fandom => context.scheme.onPrimaryContainer,
      TagType.relationship => context.scheme.onSecondaryContainer,
      _ => context.scheme.onSurfaceVariant,
    };
  }

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      labelPadding: EdgeInsets.fromLTRB(
        icon != null ? 0.0 : 4.0,
        0.0,
        4.0,
        0.0,
      ),
      label: Row(
        spacing: 8.0,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16.0, fill: 1.0, color: textColor(context)),
          ],
          Text(
            tag.name,
            style: context.text.labelMedium?.copyWith(
              color: textColor(context),
            ),
          ),
        ],
      ),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(color: textColor(context).withValues(alpha: 0.5)),
      ),
      color: WidgetStateProperty.fromMap({
        WidgetState.any: backgroundColor(context),
      }),
    );
  }
}
