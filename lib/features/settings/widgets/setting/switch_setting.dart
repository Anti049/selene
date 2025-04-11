import 'package:flutter/material.dart';
import 'package:selene/domain/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/text_setting.dart';

class SwitchSettingWidget extends StatelessWidget {
  const SwitchSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.preference,
    this.enabled = true,
    this.disabledMessage,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Preference<bool>? preference;
  final bool enabled;
  final String? disabledMessage;

  @override
  Widget build(BuildContext context) {
    final widgetEnabled = enabled && preference != null;
    return TextSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      enabled: widgetEnabled,
      onClick: () => preference?.toggle(),
      trailing: Switch(
        value: preference?.get() ?? false,
        onChanged: widgetEnabled ? (value) => preference?.set(value) : null,
      ),
      disabledMessage: disabledMessage,
    );
  }
}
