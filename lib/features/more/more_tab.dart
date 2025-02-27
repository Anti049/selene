import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/themed_logo.dart';
import 'package:selene/features/more/providers/more_preferences.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/features/settings/widgets/setting_scaffold.dart';

@RoutePage()
class MoreTab extends ConsumerWidget {
  const MoreTab({super.key});

  List<ISetting> moreSettings(BuildContext context, WidgetRef ref) {
    final router = AutoRouter.of(context);
    final preferences = ref.watch(morePreferencesProvider);

    return [
      WidgetSetting(widget: ThemedLogo()),
      SwitchSetting(
        title: 'Downloaded Only',
        subtitle: 'Only show downloaded content',
        icon: Symbols.cloud_off,
        preference: preferences.downloadedOnly(),
      ),
      SwitchSetting(
        title: 'Incognito Mode',
        subtitle: 'Pause reading history',
        icon: CupertinoIcons.eyeglasses,
        preference: preferences.incognitoMode(),
      ),
      DividerSetting(),
      TextSetting(
        title: 'Download Queue',
        icon: Symbols.download,
        onClick: () => router.pushNamed('/download-queue'),
      ),
      TextSetting(
        title: 'Categories',
        icon: Symbols.label,
        onClick: () => router.pushNamed('/categories'),
      ),
      TextSetting(
        title: 'Statistics',
        icon: Symbols.query_stats,
        onClick: () => router.pushNamed('/statistics'),
      ),
      TextSetting(
        title: 'Data & Storage',
        icon: Symbols.storage,
        onClick: () => router.pushNamed('/data-storage'),
      ),
      DividerSetting(),
      TextSetting(
        title: 'Settings',
        icon: Symbols.settings,
        onClick: () => router.pushNamed('/settings'),
      ),
      TextSetting(
        title: 'About',
        icon: Symbols.info,
        onClick: () => router.pushNamed('/about'),
      ),
      TextSetting(
        title: 'Help',
        icon: Symbols.help,
        onClick: () => router.pushNamed('/help'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SettingScaffold(settingsProvider: () => moreSettings(context, ref));
  }
}
