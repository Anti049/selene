import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/features/reader/widgets/setting_button.dart';
import 'package:selene/domain/models/preference.dart';
import 'package:selene/utils/theming.dart';

class SettingSheet extends ConsumerWidget {
  const SettingSheet({
    super.key,
    required this.title,
    required this.options,
    required this.pref,
  });

  final String title;
  final List<SettingOption> options;
  final Preference pref;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      backgroundColor: context.scheme.surfaceContainer,
      constraints: BoxConstraints(minWidth: context.mediaQuery.size.width),
      builder: (context) {
        int columnCount = 2;
        int rowCount = (options.length / columnCount).ceil();
        return Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.0,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title, style: context.text.titleMedium),
              ),
              // Option buttons
              LayoutGrid(
                columnSizes: List.generate(columnCount, (_) => 1.fr).toList(),
                columnGap: 8.0,
                rowSizes: List.generate(rowCount, (_) => auto).toList(),
                rowGap: 8.0,
                children:
                    options.map((option) {
                      return SettingButton(option: option, pref: pref);
                    }).toList(),
              ),
              const Divider(),
              // Default/Confirm buttons
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      pref.reset();
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(128.0, 48.0),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      side: BorderSide(
                        color: context.scheme.onSurfaceVariant.withValues(
                          alpha: 0.5,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      'Default',
                      style: context.text.labelLarge?.copyWith(
                        color: context.scheme.primary,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: context.scheme.onPrimaryContainer,
                      backgroundColor: context.scheme.primaryContainer,
                      minimumSize: Size(128.0, 48.0),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    child: Row(
                      spacing: 12.0,
                      children: [
                        Icon(
                          Symbols.check,
                          color: context.scheme.onPrimaryContainer,
                          size: 20.0,
                        ),
                        Text(
                          'Confirm',
                          style: context.text.labelLarge?.copyWith(
                            color: context.scheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // System Navigation Bar padding
              SizedBox(height: context.mediaQuery.viewPadding.bottom),
            ],
          ),
        );
      },
    );
  }
}
