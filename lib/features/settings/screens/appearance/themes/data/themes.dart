import 'package:selene/features/settings/screens/appearance/themes/data/theme_archiveofourown.dart';
import 'package:selene/features/settings/screens/appearance/themes/data/theme_gaziter.dart';
import 'package:selene/features/settings/screens/appearance/themes/data/theme_system.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

Map<String, AppTheme> themes = {
  themeSystem.name: themeSystem,
  themeGaziter.name: themeGaziter,
  themeArchiveOfOurOwn.name: themeArchiveOfOurOwn,
};

List<AppTheme> get themesList => themes.values.toList();
List<AppTheme> get themesListSorted =>
    themes.values.toList()..sort((a, b) => a.name.compareTo(b.name));

AppTheme? getThemeByName(String name) {
  if (name.isEmpty || !themes.keys.contains(name)) return null;
  return themes[name];
}

AppTheme? getThemeByCategory(ThemeCategory category) {
  return themesList.firstWhere(
    (theme) => theme.category == category,
    orElse: () => themesList.first,
  );
}

void addTheme(AppTheme theme) {
  themes[theme.name] = theme;
}
