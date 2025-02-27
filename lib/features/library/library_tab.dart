import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/features/settings/appearance/providers/appearance_preferences.dart';

@RoutePage()
class LibraryTab extends ConsumerWidget {
  const LibraryTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appearance = ref.watch(appearancePreferencesProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Empty(message: 'Library is not yet implemented.'),
            SizedBox(height: 16),
            SegmentedButton(
              segments: [
                ButtonSegment(value: ThemeMode.system, label: Text('System')),
                ButtonSegment(value: ThemeMode.light, label: Text('Light')),
                ButtonSegment(value: ThemeMode.dark, label: Text('Dark')),
              ],
              selected: {appearance.themeMode.get()},
              onSelectionChanged: (value) {
                final selectedTheme = value.first;
                appearance.themeMode.set(selectedTheme);
              },
            ),
          ],
        ),
      ),
    );
  }
}
