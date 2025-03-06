import 'package:flutter/material.dart';
import 'package:selene/features/settings/widgets/setting/base_widget.dart';

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
    this.subcomponent,
    this.disabledMessage,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final void Function()? onClick;
  final bool enabled;
  final Widget? subcomponent;
  final String? disabledMessage;

  @override
  Widget build(BuildContext context) {
    return BaseSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      enabled: enabled,
      onClick: onClick,
      subcomponent: subcomponent,
      disabledMessage: disabledMessage,
    );
  }
}
