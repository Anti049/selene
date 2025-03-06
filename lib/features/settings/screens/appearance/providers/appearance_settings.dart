import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/features/settings/screens/appearance/appearance_page.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
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
          TextSetting(
            title: 'Theme Selection',
            subtitle: appearancePreferences.themeName.get(),
            icon: Symbols.palette,
            onClick: () => context.router.push(ThemeSelectionRoute()),
          ),
          SliderSetting(
            title: 'Contrast Level',
            preference: appearancePreferences.contrastLevel,
            min: -1.0,
            max: 1.0,
            divisions: 4,
            enabled: !appearancePreferences.einkMode.get(),
            disabledMessage: 'Contrast is not available in eink mode',
          ),
          SliderSetting(
            title: 'Blend Level',
            preference: appearancePreferences.blendLevel,
            min: 0.0,
            max: 40.0,
            divisions: 40,
            enabled:
                !appearancePreferences.einkMode.get() &&
                (!appearancePreferences.usePureBlack.get() ||
                    appearancePreferences.themeMode.get() == ThemeMode.light),
            disabledMessage:
                appearancePreferences.einkMode.get()
                    ? 'Blend is not available in eink mode'
                    : 'Blend is not available in pure black mode',
          ),
          SwitchSetting(
            title: 'Pure Black',
            subtitle: 'Use pure black background for dark mode',
            icon: Symbols.contrast,
            preference: appearancePreferences.usePureBlack,
            enabled:
                (appearancePreferences.themeMode.get() != ThemeMode.light) &&
                !appearancePreferences.einkMode.get(),
            disabledMessage:
                appearancePreferences.einkMode.get()
                    ? 'Pure black is not available in eink mode'
                    : 'Pure black is not available in light mode',
          ),
          SwitchSetting(
            title: 'Eink Mode',
            subtitle: 'Use eink mode for better readability',
            icon: Symbols.filter_b_and_w,
            preference: appearancePreferences.einkMode,
          ),
        ],
      ),
    ];
  }
}
