import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DisplayTab extends ConsumerWidget {
  const DisplayTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        ListTile(title: const Text('Display 1'), onTap: () {}),
        ListTile(title: const Text('Display 2'), onTap: () {}),
        ListTile(title: const Text('Display 3'), onTap: () {}),
      ],
    );
  }
}
