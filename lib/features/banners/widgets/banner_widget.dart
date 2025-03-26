import 'package:animated_visibility/animated_visibility.dart';
import 'package:flutter/widgets.dart';
import 'package:selene/utils/theming.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.visible,
    required this.isTopmost,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final bool visible;
  final bool isTopmost;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bannerHeight = 32.0 + (isTopmost ? statusBarHeight : 0.0);
    // Banner widget
    return ClipRect(
      child: AnimatedVisibility(
        visible: visible,
        enter: slideInVertically(
          curve: Curves.easeInOutCubic,
          initialOffsetY: -1.0,
        ),
        enterDuration: const Duration(milliseconds: 200),
        exit: slideOutVertically(
          curve: Curves.easeInOutCubic,
          targetOffsetY: -1.0,
        ),
        exitDuration: const Duration(milliseconds: 200),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOutCubic,
          constraints: BoxConstraints(minHeight: bannerHeight),
          color: backgroundColor,
          alignment: Alignment.bottomCenter,
          // curve: Curves.easeInOutCubic,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOutCubic,
                  child: SizedBox(height: isTopmost ? statusBarHeight : 0.0),
                ),
                Text(
                  label,
                  style: context.text.labelMedium?.copyWith(color: textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
