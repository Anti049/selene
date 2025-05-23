import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class TagsTab extends ConsumerWidget {
  const TagsTab({super.key, this.scrollController});

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      controller: scrollController,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        ListTile(title: const Text('Tag 1'), onTap: () {}),
        ListTile(title: const Text('Tag 2'), onTap: () {}),
        ListTile(title: const Text('Tag 3'), onTap: () {}),
      ],
    );
  }
}
