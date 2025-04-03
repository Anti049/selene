import 'dart:math';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/action_button.dart';
import 'package:selene/core/constants/empty_constants.dart';
import 'package:selene/utils/theming.dart';

class EmptyAction {
  const EmptyAction({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final VoidCallback onPressed;
}

// ignore: must_be_immutable
class Empty extends StatefulWidget {
  const Empty({super.key, required this.message, this.subtitle, this.actions});

  final String message;
  final String? subtitle;
  final List<EmptyAction>? actions;

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  late final int _errorIndex;

  @override
  void initState() {
    _errorIndex = Random().nextInt(kEmptyFaces.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          kEmptyFaces[_errorIndex],
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
        if (widget.subtitle.isNotNullOrBlank)
          Baseline(
            baseline: 24.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              widget.subtitle ?? '',
              style: context.text.titleMedium?.copyWith(
                color: context.scheme.secondary,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        if (widget.actions?.isNotEmpty ?? false)
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (final action in widget.actions!)
                  ActionButton(
                    text: action.text,
                    icon: action.icon,
                    onPressed: action.onPressed,
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
