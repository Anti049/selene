import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/banners/models/banner.dart';
import 'package:selene/features/banners/providers/fullscreen_provider.dart';
import 'package:selene/features/banners/widgets/banner_widget.dart';
import 'package:selene/features/more/providers/more_preferences.dart';
import 'package:selene/utils/theming.dart';

class BannerContainer extends ConsumerWidget {
  const BannerContainer({super.key});

  int _getTopmost(List<Banner> banners) {
    final topmost = banners.indexWhere((element) => element.visible);
    return topmost == -1 ? 0 : topmost;
  }

  bool isTopmost(Banner banner, List<Banner> banners) {
    final topmost = _getTopmost(banners);
    return banner.visible && banners.indexOf(banner) == topmost;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusBarHeight = context.mediaQuery.viewPadding.top;
    final fullscreen = ref.watch(fullscreenProvider);
    final downloadedOnly =
        ref.watch(morePreferencesProvider).downloadedOnly.get();
    final incognitoMode =
        ref.watch(morePreferencesProvider).incognitoMode.get();

    final banners = [
      Banner(
        label: 'Downloaded Only',
        backgroundColor: context.scheme.primary,
        textColor: context.scheme.onPrimary,
        visible: downloadedOnly && !fullscreen,
      ),
      Banner(
        label: 'Incognito Mode',
        backgroundColor: context.scheme.tertiary,
        textColor: context.scheme.onTertiary,
        visible: incognitoMode && !fullscreen,
      ),
    ];

    int activeBanners = banners.count((element) => element.visible);
    double containerHeight =
        activeBanners > 0 ? (32.0 * activeBanners) + statusBarHeight : 0.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOutCubic,
      height: containerHeight,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            top: downloadedOnly ? (statusBarHeight + 32.0) : 0.0,
            left: 0.0,
            right: 0.0,
            child: BannerWidget(
              label: 'Incognito Mode',
              backgroundColor: context.scheme.tertiary,
              textColor: context.scheme.onTertiary,
              visible: incognitoMode,
              isTopmost: !downloadedOnly,
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: BannerWidget(
              label: 'Downloaded Only',
              backgroundColor: context.scheme.primary,
              textColor: context.scheme.onPrimary,
              visible: downloadedOnly,
              isTopmost: downloadedOnly,
            ),
          ),
        ],
      ),
    );
  }
}
