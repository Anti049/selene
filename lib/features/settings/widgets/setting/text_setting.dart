import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

const enabledSubtitleOpacity = 0.75;
const disabledSubtitleOpacity = 0.5;
const iconTitleBuffer = 24.0;

class TextSettingWidget extends StatelessWidget {
  const TextSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.onClick,
    this.enabled = true,
    this.trailing,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final void Function()? onClick;
  final bool enabled;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color:
            enabled ? context.scheme.primary : context.scheme.onSurfaceVariant,
      ),
      title:
          title.isNotNullOrBlank
              ? Text(title!, overflow: TextOverflow.ellipsis, maxLines: 2)
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
              : null,
      trailing: trailing,
      enabled: enabled,
      onTap: onClick,
      horizontalTitleGap: icon != null ? iconTitleBuffer : null,
    );
  }
}
