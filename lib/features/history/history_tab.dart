import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/empty.dart';

@RoutePage()
class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Empty(message: 'History is not yet implemented.'),
    );
  }
}
