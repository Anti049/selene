import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/intent_frame.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/library_old/providers/library_preferences.dart';
import 'package:selene/features/library_old/widgets/library_item/library_item_component.dart';
import 'package:selene/domain/models/preference.dart';

@RoutePage()
class UpdatesTab extends ConsumerWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          LibraryItemComponent(
            work: WorkEntity(title: 'Test Title', url: 'Test URL', authors: []),
            selected: false,
            onTap: () {
              ref
                  .read(libraryPreferencesProvider)
                  .continueReadingButton
                  .toggle();
            },
            onLongPress: () {},
            onSwipeRight: (context) {},
            onSwipeLeft: (context) {},
          ),
        ],
      ),
    );
  }
}
