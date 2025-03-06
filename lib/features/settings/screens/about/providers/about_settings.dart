import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:selene/features/settings/screens/about/about_page.dart';
import 'package:selene/features/settings/screens/about/providers/about_preferences.dart';
import 'package:selene/features/settings/models/searchable_settings.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/router/router.gr.dart';

class AboutSettings extends ISearchableSettings {
  @override
  String getTitle(BuildContext context) {
    return 'About';
  }

  @override
  PageRouteInfo getRoute() {
    return AboutSettingsRoute();
  }

  @override
  Widget getWidget() {
    return AboutSettingsPage();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final aboutPreferences = ref.watch(aboutPreferencesProvider);

    return [];
  }
}
