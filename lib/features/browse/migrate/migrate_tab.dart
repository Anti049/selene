import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/empty.dart';

@RoutePage()
class MigrateTab extends StatelessWidget {
  const MigrateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(message: 'Migrate is not yet implemented.'),
    );
  }
}
