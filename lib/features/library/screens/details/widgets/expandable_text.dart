import 'package:flutter/material.dart';
import 'package:selene/utils/theming.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle? style;
  final void Function(bool)? onExpanded;

  const ExpandableText({
    Key? key,
    required this.text,
    this.maxLines = 3,
    this.style,
    this.onExpanded,
  }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;
  double _textHeight = 0.0;
  double _collapsedHeight = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculateHeights();
  }

  void _calculateHeights() {
    final style = context.text.bodyMedium!
        .copyWith(color: context.text.bodySmall?.color)
        .merge(widget.style);

    final textPainter = TextPainter(
      text: TextSpan(text: widget.text, style: style),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: MediaQuery.of(context).size.width);

    _textHeight = textPainter.height;

    final collapsedTextPainter = TextPainter(
      text: TextSpan(text: widget.text, style: style),
      maxLines: widget.maxLines,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: MediaQuery.of(context).size.width);

    _collapsedHeight = collapsedTextPainter.height;
    // Round down to the nearest pixel to prevent overflow
    _collapsedHeight = _collapsedHeight.ceilToDouble();

    _heightAnimation = Tween<double>(
      begin: _collapsedHeight,
      end: _textHeight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
    widget.onExpanded?.call(_isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _toggleExpanded,
              child: AnimatedBuilder(
                animation: _heightAnimation,
                builder: (context, child) {
                  return Stack(
                    children: [
                      Column(
                        children: [
                          ClipRect(
                            child: Align(
                              alignment: Alignment.topLeft,
                              heightFactor:
                                  _heightAnimation.value / _textHeight,
                              child: Text(widget.text, style: widget.style),
                            ),
                          ),
                          AnimatedSize(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            child: Container(height: _isExpanded ? 24.0 : 0.0),
                          ),
                        ],
                      ),
                      Positioned.fill(
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 200),
                          opacity: _isExpanded ? 0.0 : 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  context.theme.scaffoldBackgroundColor
                                      .withAlpha(0),
                                  context.theme.scaffoldBackgroundColor,
                                ],
                                stops: [0.5, 1.0],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: _toggleExpanded,
              child: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: context.theme.iconTheme.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
