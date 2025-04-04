import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/settings/widgets/setting/checkbox_setting.dart';

@RoutePage()
class FiltersTab extends ConsumerWidget {
  const FiltersTab({super.key, this.scrollController});

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      controller: scrollController,
      shrinkWrap: true,
      children: [
        CheckboxSettingWidget(
          title: 'Downloaded',
          preference: preferences.filterDownloaded,
        ),
        CheckboxSettingWidget(
          title: 'Unread',
          preference: preferences.filterUnread,
        ),
        CheckboxSettingWidget(
          title: 'Started',
          preference: preferences.filterStarted,
        ),
        CheckboxSettingWidget(
          title: 'Completed',
          preference: preferences.filterCompleted,
        ),
        CheckboxSettingWidget(
          title: 'Bookmarked',
          preference: preferences.filterBookmarked,
        ),
        CheckboxSettingWidget(
          title: 'Updated',
          preference: preferences.filterUpdated,
        ),
      ],
    );
  }
}
