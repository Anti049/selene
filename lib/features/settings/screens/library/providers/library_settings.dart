import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/features/settings/screens/library/library_page.dart';
import 'package:selene/features/settings/screens/library/providers/library_preferences.dart';
import 'package:selene/features/settings/models/searchable_settings.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/router/router.gr.dart';

class LibrarySettings extends ISearchableSettings {
  @override
  String getTitle(BuildContext context) {
    return 'Library';
  }

  @override
  PageRouteInfo getRoute() {
    return LibrarySettingsRoute();
  }

  @override
  Widget getWidget() {
    return LibrarySettingsPage();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    return [];
  }
}
