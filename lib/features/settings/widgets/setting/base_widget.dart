import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

const enabledSubtitleOpacity = 0.75;
const disabledSubtitleOpacity = 0.5;
const iconTitleBuffer = 24.0;
const leadingTitleBuffer = 16.0;

class BaseSettingWidget extends StatelessWidget {
  const BaseSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.subcomponent,
    this.icon,
    this.onClick,
    this.enabled = true,
    this.disabledMessage,
    this.dense = false,
    this.forceIcon = false,
  });

  final String? title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Widget? subcomponent;
  final IconData? icon;
  final void Function()? onClick;
  final bool enabled;
  final String? disabledMessage;
  final bool dense;
  final bool forceIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          leading ??
          (icon != null || forceIcon
              ? Icon(
                icon,
                color:
                    enabled
                        ? context.scheme.primary
                        : context.scheme.onSurfaceVariant,
              )
              : null),
      title:
          title.isNotNullOrBlank
              ? Text(
                title!,
                style: context.text.bodyLarge?.copyWith(
                  color:
                      enabled
                          ? null
                          : context.scheme.onSurface.withValues(alpha: 0.38),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )
              : null,
      subtitle:
          subtitle.isNotNullOrBlank
              ? Opacity(
                opacity:
                    enabled ? enabledSubtitleOpacity : disabledSubtitleOpacity,
                child: Text(
                  subtitle!,
                  style: context.text.bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
              : subcomponent,
      onTap:
          enabled
              ? onClick
              : () => {
                // Show snackbar with disabled message
                if (disabledMessage != null)
                  {
                    // If there's an active snackbar, dismiss it
                    ScaffoldMessenger.of(context).removeCurrentSnackBar(),
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(disabledMessage!),
                        behavior: SnackBarBehavior.floating,
                      ),
                    ),
                  },
              },
      trailing: trailing,
      horizontalTitleGap: switch (leading) {
        null => icon != null || forceIcon ? iconTitleBuffer : 0.0,
        _ => leadingTitleBuffer,
      },
      dense: dense,
    );
  }
}
