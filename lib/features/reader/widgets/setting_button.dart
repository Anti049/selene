import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/utils/theming.dart';

class SettingOption<T, U> {
  const SettingOption({
    required this.icon,
    required this.label,
    required this.value,
  });

  final U icon;
  final String label;
  final T value;
}

class SettingButton<T, U> extends ConsumerWidget {
  const SettingButton({super.key, required this.option, required this.pref});

  final SettingOption<T, U> option;
  final Preference<T> pref;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final active = pref.get() == option.value;

    final isString = option.icon is String;
    final isIconData = option.icon is IconData;

    final svgAsset = isString ? option.icon as String : null;
    final iconAsset = isIconData ? option.icon as IconData : null;
    final iconWidget =
        isIconData
            ? Icon(
              iconAsset,
              color: active ? context.scheme.onPrimary : context.scheme.primary,
              size: 20.0,
            )
            : isString
            ? SvgPicture.asset(
              'assets/icons/$svgAsset.svg',
              colorFilter: ColorFilter.mode(
                active ? context.scheme.onPrimary : context.scheme.primary,
                BlendMode.srcIn,
              ),
              width: 20.0,
            )
            : const SizedBox.shrink();

    return TextButton(
      onPressed: () => pref.set(option.value),
      style: TextButton.styleFrom(
        backgroundColor:
            active
                ? context.scheme.primary
                : context.scheme.surfaceContainerHigh,
        minimumSize: Size(double.infinity, 48.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
      ),
      child: Row(
        spacing: 12.0,
        children: [
          iconWidget,
          Text(
            option.label,
            style: context.text.labelMedium?.copyWith(
              color: active ? context.scheme.onPrimary : context.scheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
