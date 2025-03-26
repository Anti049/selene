import 'package:flutter/material.dart' hide Banner;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:selene/features/banners/providers/banners_provider.dart';
import 'package:selene/features/banners/widgets/banner_container.dart';
import 'package:selene/features/settings/screens/appearance/providers/appearance_preferences.dart';
import 'package:selene/utils/theming.dart';

class BannerFrame extends ConsumerWidget {
  const BannerFrame({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appearancePrefs = ref.watch(appearancePreferencesProvider);
    final bannersActive = ref.watch(bannersActiveProvider);
    final appBrightness = calculateBrightness(
      context,
      appearancePrefs.themeMode.get(),
    );
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            bannersActive ? appBrightness : appBrightness.invert,
        systemNavigationBarColor: context.scheme.surfaceContainer.withValues(
          alpha: 0.75,
        ),
        systemNavigationBarIconBrightness: appBrightness.invert,
      ),
      child: Scaffold(
        body: Column(children: [BannerContainer(), Expanded(child: child)]),
      ),
    );
  }
}
