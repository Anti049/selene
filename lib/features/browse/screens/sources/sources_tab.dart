import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/empty.dart';

@RoutePage()
class SourcesTab extends StatelessWidget {
  const SourcesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Empty(message: 'Sources is not yet implemented.'));
  }
}
