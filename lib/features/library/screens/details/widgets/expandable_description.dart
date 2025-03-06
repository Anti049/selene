import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

const kDuration = Duration(milliseconds: 300);

class ExpandableDescription extends StatefulWidget {
  const ExpandableDescription({
    super.key,
    required this.description,
    this.maxLines = 3,
    this.textStyle,
  });

  final String description;
  final int maxLines;
  final TextStyle? textStyle;

  @override
  State<ExpandableDescription> createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription>
    with SingleTickerProviderStateMixin {
  static final _curve = CurveTween(curve: Curves.easeInOutCubic);
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: kDuration);
    _heightFactor = _controller.drive(_curve);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  int? get _maxLines {
    return _isExpanded ? 2 ^ 64 : widget.maxLines;
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      _isExpanded ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        if (child == null) return const SizedBox();
        return LayoutBuilder(
          builder: (context, constraints) {
            final defaultTextStyle = (child as DefaultTextStyle).style;
            final textPainter = TextPainter(
              text: TextSpan(text: widget.description, style: defaultTextStyle),
              textDirection: TextDirection.ltr,
              maxLines: widget.maxLines,
            )..layout(maxWidth: constraints.maxWidth);

            final isOverflowing = textPainter.didExceedMaxLines;
            if (!isOverflowing) return child;

            return AnimatedSize(
              duration: kDuration,
              alignment: Alignment.topCenter,
              curve: Curves.easeInOutCubic,
              child: ConstrainedBox(
                constraints: const BoxConstraints(),
                child: GestureDetector(onTap: _handleTap, child: child),
              ),
            );
          },
        );
      },
      child: DefaultTextStyle(
        style: context.text.bodyMedium!
            .copyWith(color: context.text.bodySmall?.color)
            .merge(widget.textStyle),
        child: Text(
          widget.description,
          style: widget.textStyle ?? context.text.bodyMedium,
          maxLines: _maxLines,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
