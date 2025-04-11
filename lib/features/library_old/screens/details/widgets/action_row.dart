import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/action_button.dart';
import 'package:selene/utils/theming.dart';

class DetailsActionRow extends StatelessWidget {
  const DetailsActionRow({
    super.key,
    required this.onLibraryTap,
    this.isInLibrary = false,
    required this.onPredictionTap,
    this.isInPrediction = false,
    required this.onTrackingTap,
    this.isTracking = false,
    required this.onWebViewTap,
    this.isInWebView = false,
  });

  final VoidCallback onLibraryTap;
  final bool isInLibrary;
  final VoidCallback onPredictionTap;
  final bool isInPrediction;
  final VoidCallback onTrackingTap;
  final bool isTracking;
  final VoidCallback onWebViewTap;
  final bool isInWebView;

  Color _libraryColor(BuildContext context) {
    return isInLibrary
        ? context.scheme.primary
        : context.scheme.onSurfaceVariant.withValues(alpha: 0.5);
  }

  Color _predictionColor(BuildContext context) {
    return isInPrediction
        ? context.scheme.primary
        : context.scheme.onSurfaceVariant.withValues(alpha: 0.5);
  }

  Color _trackingColor(BuildContext context) {
    return isTracking
        ? context.scheme.primary
        : context.scheme.onSurfaceVariant.withValues(alpha: 0.5);
  }

  Color _webViewColor(BuildContext context) {
    return isInWebView
        ? context.scheme.primary
        : context.scheme.onSurfaceVariant.withValues(alpha: 0.5);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        spacing: 4.0,
        children: [
          Expanded(
            child: ActionButton(
              text: 'In Library',
              icon: Symbols.favorite,
              filled: isInLibrary,
              color: _libraryColor(context),
              onPressed: onLibraryTap,
            ),
          ),
          Expanded(
            child: ActionButton(
              text: '26 days',
              icon: Symbols.hourglass,
              filled: isInPrediction,
              color: _predictionColor(context),
              onPressed: onPredictionTap,
            ),
          ),
          Expanded(
            child: ActionButton(
              text: 'Tracking',
              icon: Symbols.sync,
              filled: isTracking,
              color: _trackingColor(context),
              onPressed: onTrackingTap,
            ),
          ),
          Expanded(
            child: ActionButton(
              text: 'WebView',
              icon: Symbols.public,
              filled: isInWebView,
              color: _webViewColor(context),
              onPressed: onWebViewTap,
            ),
          ),
        ],
      ),
    );
  }
}
