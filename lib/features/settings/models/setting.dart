import 'package:flutter/material.dart';
import 'package:selene/domain/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/segmented_setting.dart';
import 'package:selene/features/settings/widgets/setting/slider_setting.dart';
import 'package:selene/features/settings/widgets/setting/switch_setting.dart';
import 'package:selene/features/settings/widgets/setting/text_setting.dart';

sealed class ISetting {
  ISetting({this.title, this.icon});

  final String? title;
  final IconData? icon;
}

sealed class Setting<T> extends ISetting {
  Setting({
    super.title,
    super.icon,
    this.preference,
    this.enabled = true,
    this.disabledMessage,
  });

  final Preference<T>? preference;
  final bool enabled;
  final String? disabledMessage;
}

class TextSetting extends Setting<String> {
  TextSetting({
    required super.title,
    this.subtitle,
    super.icon,
    super.preference,
    super.enabled,
    this.onClick,
    super.disabledMessage,
  });

  final String? subtitle;
  final void Function()? onClick;
}

class SwitchSetting extends Setting<bool> {
  SwitchSetting({
    required super.title,
    this.subtitle,
    super.icon,
    super.preference,
    super.enabled,
    super.disabledMessage,
  });

  final String? subtitle;
}

class Choice {
  const Choice({this.value, this.label = ''});

  final dynamic value;
  final String label;
}

enum ChoiceType { radio, checkbox, segmented }

class ChoiceSetting extends Setting<dynamic> {
  ChoiceSetting({
    required super.title,
    this.subtitle,
    super.icon,
    super.preference,
    super.enabled,
    required this.options,
    required this.type,
    this.showTitle = false,
  });

  final String? subtitle;
  final List<Choice> options;
  final ChoiceType type;
  final bool showTitle;
}

class SliderSetting extends Setting<double> {
  SliderSetting({
    required super.title,
    this.subtitle,
    super.icon,
    super.preference,
    super.enabled,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    super.disabledMessage,
  });

  final String? subtitle;
  final double min;
  final double max;
  final int? divisions;
}

class WidgetSetting extends ISetting {
  WidgetSetting({super.title, required this.widget});

  final Widget widget;
}

class DividerSetting extends WidgetSetting {
  DividerSetting() : super(widget: const Divider());
}

class SettingGroup extends ISetting {
  SettingGroup({required super.title, super.icon, required this.settings});

  final List<ISetting> settings;
}

Widget buildSettingWidget(BuildContext context, ISetting setting) {
  switch (setting) {
    case TextSetting():
      return TextSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        onClick: setting.onClick,
        enabled: setting.enabled,
        disabledMessage: setting.disabledMessage,
      );
    case SwitchSetting():
      return SwitchSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        preference: setting.preference,
        enabled: setting.enabled,
        disabledMessage: setting.disabledMessage,
      );
    case ChoiceSetting():
      switch (setting.type) {
        case ChoiceType.radio:
          // TODO: Handle this case.
          throw UnimplementedError();
        case ChoiceType.checkbox:
          // TODO: Handle this case.
          throw UnimplementedError();
        case ChoiceType.segmented:
          return SegmentedSettingWidget(
            title: setting.showTitle ? setting.title : null,
            options: setting.options,
            preference: setting.preference,
          );
      }
    case SliderSetting():
      return SliderSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        preference: setting.preference,
        enabled: setting.enabled,
        min: setting.min,
        max: setting.max,
        divisions: setting.divisions,
        disabledMessage: setting.disabledMessage,
      );
    case WidgetSetting():
      return setting.widget;
    case SettingGroup():
      return const SizedBox();
  }
}
