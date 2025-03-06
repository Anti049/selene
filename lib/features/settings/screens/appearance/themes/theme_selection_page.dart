import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/features/settings/screens/appearance/themes/data/themes.dart';
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';
import 'package:selene/features/settings/screens/appearance/themes/widgets/theme_section.dart';
import 'package:selene/features/settings/models/preference.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class ThemeSelectionScreen extends ConsumerStatefulWidget {
  const ThemeSelectionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ThemeSelectionScreenState();
}

class _ThemeSelectionScreenState extends ConsumerState<ThemeSelectionScreen> {
  Map<ThemeCategory, bool> expandedCategories = {};
  bool expandAll = false;

  @override
  void initState() {
    super.initState();

    for (final category in ThemeCategory.values) {
      expandedCategories[category] = false;
    }
  }

  List<AppTheme> getThemesByCategory(
    BuildContext context,
    ThemeCategory category,
  ) {
    // Filter out null themes and group by category
    final categoryThemes =
        themes.values.where((theme) => theme.category == category).toList();
    // Sort themes by name
    categoryThemes.sort((a, b) {
      return a.name.compareTo(a.name);
    });
    // Move "System" theme from sorted index to first
    final systemThemeIndex = categoryThemes.indexWhere(
      (theme) => theme.name.toLowerCase() == 'system',
    );
    if (systemThemeIndex != -1) {
      final systemTheme = categoryThemes.removeAt(systemThemeIndex);
      categoryThemes.insert(0, systemTheme);
    }
    // Move "Dynamic" theme from sorted index to second
    final dynamicThemeIndex = categoryThemes.indexWhere(
      (theme) => theme.name.toLowerCase() == 'dynamic',
    );
    if (dynamicThemeIndex != -1) {
      final dynamicTheme = categoryThemes.removeAt(dynamicThemeIndex);
      categoryThemes.insert(1, dynamicTheme);
    }
    // Return the sorted themes
    return categoryThemes;
  }

  Map<ThemeCategory, List<AppTheme>> getThemesByCategoryMap(
    BuildContext context,
  ) {
    final themesByCategory = <ThemeCategory, List<AppTheme>>{};
    for (final category in ThemeCategory.values) {
      themesByCategory[category] = getThemesByCategory(context, category);
    }
    return themesByCategory;
  }

  bool isCategorySelected(ThemeCategory category, String themeName) {
    final selectedTheme = themes[themeName];
    return selectedTheme?.category == category;
  }

  void expandContractCategory(ThemeCategory category) {
    setState(() {
      expandedCategories[category] = !expandedCategories[category]!;
      expandAll = expandedCategories.values.every((e) => e);
    });
  }

  void expandContractAll(bool expand) {
    setState(() {
      for (final category in ThemeCategory.values) {
        expandedCategories[category] = expand;
      }
      expandAll = expand;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appearancePreferences = ref.watch(appearancePreferencesProvider);
    final themeMode = appearancePreferences.themeMode;
    final themeName = appearancePreferences.themeName;
    final categorizedThemes = getThemesByCategoryMap(context);

    return BannerScaffold(
      appBar: PaddedAppBar(title: Text('Theme Selection')),
      body: ListView(
        children: [
          const SizedBox(height: 4.0),
          for (final category in categorizedThemes.keys)
            if (categorizedThemes[category]!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(category.name),
                      subtitle: Text(
                        '${categorizedThemes[category]!.length} themes',
                      ),
                      tileColor:
                          expandedCategories[category]!
                              ? context.scheme.surfaceContainerHigh
                              : context.scheme.surfaceContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(8.0),
                          topRight: const Radius.circular(8.0),
                          bottomLeft: Radius.circular(
                            expandedCategories[category]! ? 0.0 : 8.0,
                          ),
                          bottomRight: Radius.circular(
                            expandedCategories[category]! ? 0.0 : 8.0,
                          ),
                        ),
                      ),
                      enabled: categorizedThemes[category]?.isNotEmpty ?? false,
                      leading: Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color:
                              isCategorySelected(category, themeName.get())
                                  ? context.scheme.primary
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(256.0),
                        ),
                        child: Icon(
                          Symbols.check,
                          color:
                              isCategorySelected(category, themeName.get())
                                  ? context.scheme.onPrimary
                                  : Colors.transparent,
                          size: 16.0,
                        ),
                      ),
                      trailing: Icon(
                        expandedCategories[category]!
                            ? Symbols.keyboard_arrow_up
                            : Symbols.keyboard_arrow_down,
                      ),
                      onTap: () {
                        expandContractCategory(category);
                      },
                    ),
                    AnimatedVisibility(
                      visible: expandedCategories[category] ?? false,
                      enter: expandVertically(
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                      enterDuration: const Duration(milliseconds: 200),
                      exit: shrinkVertically(
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                      exitDuration: const Duration(milliseconds: 200),
                      child: ThemeSection(
                        title: category.name,
                        themes: categorizedThemes[category]!,
                      ),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: 4.0),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.scheme.surfaceContainerLow,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                themeMode.cycle(ThemeMode.values);
              },
              icon: Icon(switch (themeMode.get()) {
                ThemeMode.system => Symbols.brightness_auto,
                ThemeMode.light => Symbols.brightness_high,
                ThemeMode.dark => Symbols.brightness_low,
              }),
            ),
            const SizedBox(width: 4.0),
            IconButton(
              onPressed: () {
                expandContractAll(!expandAll);
              },
              icon: Icon(expandAll ? Symbols.collapse_all : Symbols.expand_all),
            ),
            const SizedBox(width: 4.0),
            IconButton(onPressed: () {}, icon: const Icon(Symbols.square)),
            const SizedBox(width: 4.0),
            IconButton(onPressed: () {}, icon: const Icon(Symbols.pentagon)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        onPressed: () {},
        child: const Icon(Symbols.add, fill: 1.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
