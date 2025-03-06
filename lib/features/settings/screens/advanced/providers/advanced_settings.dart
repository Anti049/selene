import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/features/settings/screens/advanced/advanced_page.dart';
import 'package:selene/features/settings/screens/advanced/providers/advanced_preferences.dart';
import 'package:selene/features/settings/models/searchable_settings.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/router/router.gr.dart';

class AdvancedSettings extends ISearchableSettings {
  @override
  String getTitle(BuildContext context) {
    return 'Advanced';
  }

  @override
  PageRouteInfo getRoute() {
    return AdvancedSettingsRoute();
  }

  @override
  Widget getWidget() {
    return AdvancedSettingsPage();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final advancedPreferences = ref.watch(advancedPreferencesProvider);

    return [
      SettingGroup(
        title: 'General',
        settings: [
          SwitchSetting(
            title: 'Show Debug Info',
            subtitle: 'Show debug info in the app',
            preference: advancedPreferences.showDebugInfo,
            icon: Symbols.bug_report,
          ),
        ],
      ),
    ];
  }
}
