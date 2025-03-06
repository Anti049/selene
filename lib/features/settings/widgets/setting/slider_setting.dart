import 'package:flutter/material.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/base_widget.dart';

class SliderSettingWidget extends StatelessWidget {
  const SliderSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.preference,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.enabled = true,
    this.disabledMessage,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Preference<double>? preference;
  final double min;
  final double max;
  final int? divisions;
  final bool enabled;
  final String? disabledMessage;

  @override
  Widget build(BuildContext context) {
    final widgetEnabled = enabled && preference != null;
    return BaseSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      enabled: widgetEnabled,
      subcomponent: Slider(
        value: preference?.get() ?? min,
        label: preference?.get().toString(),
        min: min,
        max: max,
        divisions: divisions,
        onChanged: enabled ? (value) => preference?.set(value) : null,
      ),
      disabledMessage: disabledMessage,
    );
  }
}
