import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/empty.dart';

@RoutePage()
class ExtensionsTab extends StatelessWidget {
  const ExtensionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(message: 'Extensions is not yet implemented.'),
    );
  }
}
