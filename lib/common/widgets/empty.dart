import 'dart:math';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/models/empty_action.dart';
import 'package:selene/common/widgets/action_button.dart';
import 'package:selene/core/constants/empty_constants.dart';
import 'package:selene/utils/theming.dart';

// ignore: must_be_immutable
class Empty extends StatefulWidget {
  const Empty({
    super.key,
    this.message,
    this.subtitle,
    this.actions,
    this.style,
  });

  final String? message;
  final String? subtitle;
  final List<EmptyAction>? actions;
  final TextStyle? style;

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            kEmptyFaces[_errorIndex],
            style:
                widget.style ??
                context.text.displayMedium?.copyWith(
                  color: context.scheme.secondary,
                ),
          ),
          if (widget.message.isNotNullOrBlank)
            Baseline(
              baseline: 24.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                widget.message ?? '', // Fallback to empty string if null
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
      ),
    );
  }
}
