import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/appearance/providers/appearance_settings.dart';
import 'package:selene/features/settings/widgets/setting_scaffold.dart';

@RoutePage()
class AppearanceSettingsPage extends ConsumerWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = AppearanceSettings();
    return SettingScaffold(
      title: settings.getTitle(context),
      settingsProvider: () => settings.getSettings(context, ref),
    );
  }
}
