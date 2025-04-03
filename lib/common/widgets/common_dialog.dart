import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.onSubmit,
    required this.child,
  });

  /// Optional icon for the dialog, if needed. This can be used to show an icon in the title bar.
  final IconData? icon;

  /// Optional title for the dialog, if needed.
  final String? title;
  final String? subtitle;
  final VoidCallback? onSubmit;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Ensure the dialog has enough padding from the bottom to avoid overlapping with system navigation bar
    final systemNavigationHeight = context.mediaQuery.viewPadding.bottom;

    return Dialog(
      insetPadding: EdgeInsets.fromLTRB(
        16.0,
        16.0,
        16.0,
        16.0 + systemNavigationHeight,
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: context.scheme.surfaceContainerHigh,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon (if provided)
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    size: 24.0,
                    color: context.scheme.secondary,
                  ),
                ),
              ),
            // Title
            SizedBox(
              width: double.infinity,
              child: Text(
                title ?? 'Title',
                textAlign: icon != null ? TextAlign.center : TextAlign.start,
                maxLines: 1,
                style: context.text.headlineSmall?.copyWith(
                  color: context.scheme.onSurface,
                ),
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 16.0),
              Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: context.text.bodyMedium?.copyWith(
                  color: context.scheme.onSurfaceVariant,
                ),
              ),
            ],
            const SizedBox(height: 16.0),
            // Body content
            child,
            // Actions (if any)
            const SizedBox(height: 24.0),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 8.0,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: context.scheme.error,
                  ),
                  child: Text('Close'),
                ),
                if (onSubmit !=
                    null) // Only show the submit button if onSubmit is provided
                  TextButton(
                    onPressed: () {
                      if (onSubmit != null) {
                        onSubmit!();
                      }
                    },
                    child: Text('Submit'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
