import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/features/library/providers/library_preferences.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/features/settings/widgets/setting/base_widget.dart';
import 'package:selene/utils/enums.dart';

@RoutePage()
class SortTab extends ConsumerWidget {
  const SortTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);
    return ListView(
      shrinkWrap: true,
      children:
          SortBy.values
              .map(
                (s) => BaseSettingWidget(
                  title: s.label,
                  icon:
                      preferences.sortBy.get() == s
                          ? preferences.sortDirection.get() ==
                                  SortDirection.ascending
                              ? Symbols.arrow_upward
                              : Symbols.arrow_downward
                          : null,
                  onClick: () {
                    if (preferences.sortBy.get() == s) {
                      preferences.sortDirection.cycle(SortDirection.values);
                    } else {
                      preferences.sortBy.set(s);
                      preferences.sortDirection.set(SortDirection.descending);
                    }
                  },
                  dense: true,
                  forceIcon: true,
                ),
              )
              .toList(),
    );
  }
}
