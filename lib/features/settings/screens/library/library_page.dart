import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/settings/screens/library/providers/library_settings.dart';
import 'package:selene/features/settings/widgets/setting_scaffold.dart';

@RoutePage()
class LibrarySettingsPage extends ConsumerWidget {
  const LibrarySettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = LibrarySettings();
    return SettingScaffold(
      title: settings.getTitle(context),
      settingsProvider: () => settings.getSettings(context, ref),
    );
  }
}
