import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/banners/models/banner.dart';
import 'package:selene/features/more/providers/more_preferences.dart';
import 'package:selene/utils/theming.dart';

class BannerFrame extends ConsumerWidget {
  const BannerFrame({super.key, required this.child});

  final Widget child;

  int _getTopmost(List<Banner> banners) {
    final topmost = banners.indexWhere((element) => element.visible);
    return topmost == -1 ? 0 : topmost;
  }

  List<Widget> _getBanners(
    BuildContext context, {
    required bool downloadedOnly,
    required bool incognitoMode,
    required String info,
    required String warning,
    required String error,
  }) {
    final banners = [
      Banner(
        label: 'Downloaded Only',
        backgroundColor: context.scheme.tertiary,
        textColor: context.scheme.onTertiary,
        visible: downloadedOnly,
      ),
      Banner(
        label: 'Incognito Mode',
        backgroundColor: context.scheme.secondary,
        textColor: context.scheme.onSecondary,
        visible: incognitoMode,
      ),
    ];

    int topmost = _getTopmost(banners);

    return banners
        .map((e) => e.toWidget(isTopmost: topmost == banners.indexOf(e)))
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadedOnly =
        ref.watch(morePreferencesProvider).downloadedOnly().get();
    final incognitoMode =
        ref.watch(morePreferencesProvider).incognitoMode().get();
    return Scaffold(
      body: Column(
        children: [
          ..._getBanners(
            context,
            downloadedOnly: downloadedOnly,
            incognitoMode: incognitoMode,
            info: '',
            warning: '',
            error: '',
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
