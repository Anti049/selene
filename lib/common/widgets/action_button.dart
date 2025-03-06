import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.color,
    this.filled = false,
  });

  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Color? color;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              fill: filled ? 1.0 : 0.0,
              size: 24.0,
              color: color ?? context.scheme.onSurfaceVariant,
            ),
            const SizedBox.square(dimension: 4.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: context.text.labelMedium?.copyWith(
                color: color ?? context.scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
