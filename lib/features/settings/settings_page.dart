import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_settings.dart';
import 'package:selene/features/settings/models/searchable_settings.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/features/settings/widgets/setting_scaffold.dart';
import 'package:selene/router/router.gr.dart';
import 'package:selene/utils/string.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  final _settingScreens = <ISearchableSettings>[
    // Add your settings screens here
    AppearanceSettings(),
    // LibrarySettings(),
    // AccountsSettings(),
    // ReaderSettings(),
    // DownloadsSettings(),
    // TrackingSettings(),
    // BrowseSettings(),
    // NotificationsSettings(),
    // DataStorageSettings(),
    // SecurityPrivacySettings(),
    // AdvancedSettings(),
    // AboutSettings(),
  ];

  Iterable<SettingsData> getSettingsData(BuildContext context, WidgetRef ref) {
    return _settingScreens.map((screen) {
      return SettingsData(
        title: screen.getTitle(context),
        route: screen.getRoute(),
        contents: screen.getSettings(context, ref),
      );
    });
  }

  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final router = context.router;
    return [
      // Appearance
      TextSetting(
        title: 'Appearance',
        subtitle: 'Theme, font, language, and more',
        icon: Symbols.palette,
        onClick: () => router.push(AppearanceSettingsRoute()),
      ),
      // Library
      TextSetting(
        title: 'Library',
        subtitle: 'Categories, global updates, chapter swipe',
        icon: Symbols.book,
      ),
      // Accounts
      TextSetting(
        title: 'Accounts',
        subtitle: 'Manage accounts, login/logout, and sync',
        icon: Symbols.group,
      ),
      // Reader
      TextSetting(
        title: 'Reader',
        subtitle: 'Reader settings, page transitions, and more',
        icon: Symbols.chrome_reader_mode,
      ),
      // Downloads
      TextSetting(
        title: 'Downloads',
        subtitle: 'Download settings, queue, history',
        icon: Symbols.file_download,
      ),
      // Tracking
      TextSetting(
        title: 'Tracking',
        subtitle: 'Tracking settings, history, statistics',
        icon: Symbols.sync,
      ),
      // Browse
      TextSetting(
        title: 'Browse',
        subtitle: 'Browse settings, sources, extensions',
        icon: Symbols.explore,
      ),
      // Notifications
      TextSetting(
        title: 'Notifications',
        subtitle: 'Notification settings, sounds, and more',
        icon: Symbols.notifications,
      ),
      // Data & Storage
      TextSetting(
        title: 'Data & Storage',
        subtitle: 'Manage data, storage, and cache settings',
        icon: Symbols.storage,
      ),
      // Security & Privacy
      TextSetting(
        title: 'Security & Privacy',
        subtitle: 'Security settings, incognito mode, and more',
        icon: Symbols.security,
      ),
      // Advanced
      TextSetting(
        title: 'Advanced',
        subtitle: 'Developer options, experimental features',
        icon: Symbols.developer_mode,
      ),
      // About
      TextSetting(
        title: 'About',
        subtitle: 'Selene Stable 0.1.0',
        icon: Symbols.info,
      ),
    ];
  }

  SearchAnchor getSearchButton(BuildContext context) {
    final router = AutoRouter.of(context);
    return SearchAnchor(
      isFullScreen: true,
      viewBackgroundColor: context.scheme.surfaceContainerLow,
      viewHintText: 'Search...',
      builder: (context, controller) {
        return IconButton(
          icon: const Icon(Symbols.search),
          onPressed: () {
            controller.clear();
            controller.openView();
          },
        );
      },
      viewBuilder: (suggestions) {
        return Column(
          children: [
            Container(
              color: context.scheme.surfaceContainer,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recent Searches'),
                    const SizedBox(height: 8.0),
                    Wrap(
                      children: [
                        ActionChip(
                          label: const Text(
                            'Test 1',
                          ), // TODO: Implement search history
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: context.scheme.outline, height: 1.0),
            if (suggestions.isEmpty)
              Expanded(child: Empty(message: 'No results found'))
            else
              Expanded(child: ListView(children: suggestions.toList())),
          ],
        );
      },
      suggestionsBuilder: (context, controller) {
        final searchKey = controller.text;
        if (searchKey.isEmpty) return List.empty();

        final data = getSettingsData(context, ref);
        final suggestions =
            data.flatMap((settingsData) {
              return settingsData.contents
                  // Only search from preferences that are ENABLED and have a TITLE
                  .where((it) => it.title.isNotNullOrBlank)
                  // Flatten items contained inside ENABLED PreferenceGroup
                  .flatMap<(String?, ISetting)>(
                    (p) => switch (p) {
                      SettingGroup() => p.settings
                          .where((it) => it.title.isNotNullOrBlank)
                          .map((it) => (p.title, it)),
                      _ => [(null, p)],
                    },
                  )
                  // Filter by search key
                  .where((it) {
                    final (_, p) = it;
                    if (p.title.isNullOrBlank) return false;
                    final inTitle = p.title!.containsIgnoreCase(searchKey);
                    // final insubtitle =
                    //     p.subtitle?.containsIgnoreCase(searchKey) ?? false;
                    return inTitle; // || insubtitle;
                  })
                  .map((it) {
                    final (categoryTitle, p) = it;
                    // If the setting is a WidgetSetting, we don't need to show it in the search results
                    if (p is WidgetSetting) return null;
                    if (p.title.isNullOrBlank) return null;
                    return SettingSearchResult(
                      title: p.title!,
                      route: settingsData.route,
                      breadcrumbs:
                          categoryTitle != null
                              ? '${settingsData.title} > $categoryTitle'
                              : settingsData.title,
                      highlightKey: searchKey,
                    );
                  });
            }).toList();

        // Return list of widgets
        return List.generate(suggestions.length, (index) {
          final suggestion = suggestions[index];
          if (suggestion == null) return const SizedBox.shrink();
          return ListTile(
            title: Text(suggestion.title),
            subtitle: Text(suggestion.breadcrumbs),
            onTap: () {
              router.push(suggestion.route);
              controller.closeView(null);
            },
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SettingScaffold(
      title: 'Settings',
      actions: [getSearchButton(context)],
      settingsProvider: () => getSettings(context, ref),
    );
  }
}
