import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selene/utils/theming.dart';

class ThemedLogo extends StatelessWidget {
  const ThemedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 128.0,
            colorFilter: ColorFilter.mode(
              context.scheme.primary,
              BlendMode.srcIn,
            ),
            semanticsLabel: 'App Logo',
          ),
        ),
        const Divider(),
      ],
    );
  }
}
