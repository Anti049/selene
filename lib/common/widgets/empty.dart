import 'dart:math';
import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

const List<String> _errorFaces = [
  "(･o･;)",
  "Σ(ಠ_ಠ)",
  "ಥ_ಥ",
  "(˘･_･˘)",
  "(；￣Д￣)",
  "(･Д･。",
  "(╯︵╰,)",
  "૮(˶ㅠ︿ㅠ)ა",
  "(っ◞‸◟ c)",
  "｡°(°.◜ᯅ◝°)°｡",
  "(≥o≤)",
  "(╥﹏╥)",
  "(´；д；`)",
  "( •ө• )",
  "(·•᷄‎ࡇ•᷅ )",
];

class Empty extends StatefulWidget {
  const Empty({super.key, required this.message});

  final String message;

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  late final int _errorIndex;

  @override
  void initState() {
    _errorIndex = Random().nextInt(_errorFaces.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _errorFaces[_errorIndex],
              style: context.text.displayMedium?.copyWith(
                color: context.scheme.secondary,
              ),
            ),
            Baseline(
              baseline: 24.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                widget.message,
                style: context.text.titleLarge?.copyWith(
                  color: context.scheme.secondary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
