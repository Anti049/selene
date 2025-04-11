import 'package:flutter/material.dart';
import 'package:selene/domain/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/base_widget.dart';
import 'package:selene/utils/enums.dart';
import 'package:selene/utils/theming.dart';

class CheckboxSettingWidget<T> extends StatelessWidget {
  const CheckboxSettingWidget({
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
  final Preference<T>? preference;
  final bool enabled;
  final String? disabledMessage;

  void onChanged(bool? value) {
    if (T == bool) {
      preference?.set(value);
    } else if (T == TriState) {
      preference?.set(TriState.fromBool(value));
    }
  }

  bool? get value {
    final dynamic value = preference?.get();
    if (T == bool) {
      return value as bool;
    } else if (T == TriState) {
      return (value as TriState).toBool();
    }
    return false;
  }

  Color? getColor(BuildContext context) {
    dynamic value = preference?.get();
    if (T == bool) {
      value = value as bool;
    } else if (T == TriState) {
      value = (value as TriState).toBool();
    }
    return switch (value as bool?) {
      false => null,
      true => context.scheme.primary,
      null => context.scheme.error,
    };
  }

  @override
  Widget build(BuildContext context) {
    final widgetEnabled = enabled && preference != null;
    return BaseSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      enabled: widgetEnabled,
      onClick: () {
        final value = preference?.get();
        if (T == bool) {
          preference?.set(!(value as bool));
        } else if (T == TriState) {
          (preference as Preference<TriState>).cycle(TriState.values);
        }
      },
      leading: Checkbox(
        value: value,
        tristate: T == TriState,
        onChanged: enabled ? onChanged : null,
        activeColor: getColor(context),
      ),
      disabledMessage: disabledMessage,
    );
  }
}
