import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(text, style: context.text.labelMedium),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: context.scheme.onSurfaceVariant.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
