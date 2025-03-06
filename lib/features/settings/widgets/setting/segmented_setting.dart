import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/models/setting.dart';

class SegmentedSettingWidget extends StatelessWidget {
  const SegmentedSettingWidget({
    super.key,
    this.title,
    this.preference,
    required this.options,
    this.enabled = true,
  });

  final String? title;
  final Preference<dynamic>? preference;
  final List<Choice> options;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title.isNotNullOrBlank ? Text(title!) : const SizedBox.shrink(),
      subtitle: SegmentedButton(
        segments:
            options.map((e) {
              return ButtonSegment(value: e.value, label: Text(e.label));
            }).toList(),
        selected: {preference?.get() ?? options.first.value},
        onSelectionChanged: (value) {
          if (!enabled) return;
          final selectedValue = value.first;
          preference?.set(selectedValue);
        },
      ),
      enabled: preference != null,
    );
  }
}
