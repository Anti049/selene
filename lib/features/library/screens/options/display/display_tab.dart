import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/settings/widgets/setting/checkbox_setting.dart';
import 'package:selene/utils/enums.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class DisplayTab extends ConsumerWidget {
  const DisplayTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.0,
            children: [
              Text('Display Mode', style: context.text.bodyLarge),
              Wrap(
                spacing: 8.0,
                children:
                    DisplayMode.values
                        .map(
                          (mode) => ChoiceChip(
                            label: Text(mode.label),
                            iconTheme: null,
                            selected: preferences.displayMode.get() == mode,
                            onSelected:
                                (selected) => preferences.displayMode.set(mode),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            backgroundColor: context.scheme.surfaceContainer,
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
        if (preferences.displayMode.get().name.contains('Grid'))
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grid Size', style: context.text.bodyLarge),
                    Text(
                      preferences.gridSize.get() > 0
                          ? '${preferences.gridSize.get().toInt()} Columns'
                          : 'Auto',
                      style: context.text.bodyMedium,
                    ),
                  ],
                ),
                Slider(
                  value: preferences.gridSize.get(),
                  onChanged: (value) => preferences.gridSize.set(value),
                  min: 0.0,
                  max: 6.0,
                  divisions: 6,
                ),
              ],
            ),
          ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 16.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Overlay Badges', style: context.text.bodyLarge),
              ),
              CheckboxSettingWidget(
                title: 'Downloaded Chapters',
                preference: preferences.downloadedBadge,
              ),
              CheckboxSettingWidget(
                title: 'Unread Chapters',
                preference: preferences.unreadBadge,
              ),
              CheckboxSettingWidget(
                title: 'Language',
                preference: preferences.languageBadge,
              ),
              CheckboxSettingWidget(
                title: 'Continue Reading Button',
                preference: preferences.continueReadingButton,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 16.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Tabs', style: context.text.bodyLarge),
              ),
              // CheckboxSettingWidget(
              //   title: 'Show Category Tabs',
              //   preference: preferences.showCategoryTabs,
              // ),
              // CheckboxSettingWidget(
              //   title: 'Show Favorite Tabs',
              //   preference: preferences.showFavoriteTabs,
              // ),
              CheckboxSettingWidget(
                title: 'Show Work Count',
                preference: preferences.showWorkCount,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
