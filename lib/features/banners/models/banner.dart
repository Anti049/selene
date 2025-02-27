import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:selene/features/banners/widgets/banner_widget.dart';

part 'banner.freezed.dart';

@freezed
class Banner with _$Banner {
  const Banner._();

  const factory Banner({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required bool visible,
  }) = _Banner;

  Widget toWidget({bool isTopmost = false}) {
    return BannerWidget(
      label: label,
      backgroundColor: backgroundColor,
      textColor: textColor,
      visible: visible,
      isTopmost: isTopmost,
    );
  }
}
