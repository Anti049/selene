import 'package:flutter/material.dart';

class SmartRefreshIndicator extends StatelessWidget {
  const SmartRefreshIndicator({
    super.key,
    required this.refreshKey,
    required this.onRefresh,
    required this.child,
  });

  final GlobalKey<RefreshIndicatorState> refreshKey;
  final Future<void> Function() onRefresh;
  final Widget child;

  @override
  Widget build(context) {
    return LayoutBuilder(
      builder:
          (context, constraints) => RefreshIndicator(
            key: refreshKey,
            onRefresh: onRefresh,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                  minWidth: constraints.maxWidth,
                ),
                child: child,
              ),
            ),
          ),
    );
  }
}
