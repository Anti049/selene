import 'package:auto_route/src/route/page_route_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:selene/features/settings/appearance/appearance_page.dart';
import 'package:selene/features/settings/appearance/providers/appearance_preferences.dart';
import 'package:selene/features/settings/models/searchable_settings.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/router/router.gr.dart';

class AppearanceSettings extends ISearchableSettings {
  @override
  String getTitle(BuildContext context) {
    return 'Appearance';
  }

  @override
  PageRouteInfo getRoute() {
    return AppearanceSettingsRoute();
  }

  @override
  Widget getWidget() {
    return AppearanceSettingsPage();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final appearancePreferences = ref.watch(appearancePreferencesProvider);

    return [
      SettingGroup(
        title: 'Theme',
        settings: [
          ChoiceSetting(
            title: 'Theme Mode',
            options: [
              Choice(label: 'System', value: ThemeMode.system),
              Choice(label: 'Light', value: ThemeMode.light),
              Choice(label: 'Dark', value: ThemeMode.dark),
            ],
            type: ChoiceType.segmented,
            preference: appearancePreferences.themeMode,
          ),
        ],
      ),
    ];
  }
}
