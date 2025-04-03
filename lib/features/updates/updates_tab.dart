import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/intent_frame.dart';

@RoutePage()
class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntentFrame(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1), () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Refresh completed!'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          });
        },
        child: Empty(message: 'Updates is not yet implemented.'),
      ),
    );
  }
}
