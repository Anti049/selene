import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.info,
    required this.success,
    required this.alert,
    required this.warning,
    this.character,
    this.romance,
  });

  final Color? info;
  final Color? success;
  final Color? alert;
  final Color? warning;
  final Color? character;
  final Color? romance;

  @override
  CustomColors copyWith({
    Color? info,
    Color? success,
    Color? alert,
    Color? warning,
    Color? character,
    Color? romance,
  }) {
    return CustomColors(
      info: info ?? this.info,
      success: success ?? this.success,
      alert: alert ?? this.alert,
      warning: warning ?? this.warning,
      character: character ?? this.character,
      romance: romance ?? this.romance,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      info: Color.lerp(info, other.info, t),
      success: Color.lerp(success, other.success, t),
      alert: Color.lerp(alert, other.alert, t),
      warning: Color.lerp(warning, other.warning, t),
      character: Color.lerp(character, other.character, t),
      romance: Color.lerp(romance, other.romance, t),
    );
  }

  CustomColors harmonized(Color harmonizeWith) {
    return copyWith(
      info: info!.harmonizeWith(harmonizeWith),
      success: success!.harmonizeWith(harmonizeWith),
      alert: alert!.harmonizeWith(harmonizeWith),
      warning: warning!.harmonizeWith(harmonizeWith),
      character: character!.harmonizeWith(harmonizeWith),
      romance: romance!.harmonizeWith(harmonizeWith),
    );
  }
}
