import 'package:flutter/material.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/segmented_setting.dart';
import 'package:selene/features/settings/widgets/setting/switch_setting.dart';
import 'package:selene/features/settings/widgets/setting/text_setting.dart';

sealed class ISetting {
  ISetting({this.title, this.icon});

  final String? title;
  final IconData? icon;
}

sealed class Setting<T> extends ISetting {
  Setting({super.title, super.icon, this.preference, this.enabled = true});

  final Preference<T>? preference;
  final bool enabled;
}

class TextSetting extends Setting<String> {
  TextSetting({
    required super.title,
    this.subtitle,
    super.icon,
    super.preference,
    super.enabled,
    this.onClick,
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
  });

  final String? subtitle;
  final List<Choice> options;
  final ChoiceType type;
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
      );
    case SwitchSetting():
      return SwitchSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        preference: setting.preference,
        enabled: setting.enabled,
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
            title: setting.title,
            options: setting.options,
            preference: setting.preference,
          );
      }
    case WidgetSetting():
      return setting.widget;
    case SettingGroup():
      return const SizedBox();
  }
}
