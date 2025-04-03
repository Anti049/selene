import 'package:selene/core/themes/hsr/theme_silver_wolf.dart';
import 'package:selene/core/themes/tachiyomi/theme_lavender.dart';
import 'package:selene/core/themes/system/theme_monochrome.dart';
import 'package:selene/core/themes/tachiyomi/theme_midnight_dusk.dart';
import 'package:selene/core/themes/tachiyomi/theme_strawberry.dart';
import 'package:selene/core/themes/tachiyomi/theme_tachiyomi.dart';
import 'package:selene/core/themes/tachiyomi/theme_tako.dart';
import 'package:selene/core/themes/tachiyomi/theme_teal_turquoise.dart';
import 'package:selene/core/themes/tachiyomi/theme_tidal_wave.dart';
import 'package:selene/core/themes/tachiyomi/theme_yin_yang.dart';
import 'package:selene/core/themes/tachiyomi/theme_yotsuba.dart';
import 'package:selene/core/themes/site/theme_archiveofourown.dart';
import 'package:selene/core/themes/system/theme_gaziter.dart';
import 'package:selene/core/themes/tachiyomi/theme_green_apple.dart';
import 'package:selene/core/themes/tachiyomi/theme_nord.dart';
import 'package:selene/core/themes/system/theme_system.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

Map<String, SeleneTheme> themes = {
  // System
  themeSystem.id: themeSystem,
  themeGaziter.id: themeGaziter,
  themeMonochrome.id: themeMonochrome,
  // Sites
  themeArchiveOfOurOwn.id: themeArchiveOfOurOwn,
  // Tachiyomi
  themeGreenApple.id: themeGreenApple,
  themeLavender.id: themeLavender,
  themeMidnightDusk.id: themeMidnightDusk,
  themeNord.id: themeNord,
  themeStrawberry.id: themeStrawberry,
  themeTachiyomi.id: themeTachiyomi,
  themeTako.id: themeTako,
  themeTealTurquoise.id: themeTealTurquoise,
  themeTidalWave.id: themeTidalWave,
  themeYinYang.id: themeYinYang,
  themeYotsuba.id: themeYotsuba,
  // Honkai: Star Rail
  themeSilverWolf.id: themeSilverWolf,
};

// List<SeleneTheme> get themesList => themes.values.toList();
// List<SeleneTheme> get themesListSorted =>
//     themes.values.toList()..sort((a, b) => a.name.compareTo(b.name));

// SeleneTheme? getThemeByID(String id) {
//   if (id.isEmpty || !themes.keys.contains(id)) return null;
//   return themes[id];
// }

// SeleneTheme? getThemeByCategory(ThemeCategory category) {
//   return themesList.firstWhere(
//     (theme) => theme.category == category,
//     orElse: () => themesList.first,
//   );
// }

// void addTheme(SeleneTheme theme) {
//   themes[theme.id] = theme;
// }
