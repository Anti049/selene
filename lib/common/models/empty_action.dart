import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_action.freezed.dart';

@freezed
class EmptyAction with _$EmptyAction {
  const EmptyAction._();

  const factory EmptyAction({
    required String text,
    required IconData icon,
    required VoidCallback onPressed,
  }) = _EmptyAction;
}
