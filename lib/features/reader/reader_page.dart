import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/models/empty_action.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/core/constants/animation_constants.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/banners/providers/fullscreen_provider.dart';
import 'package:selene/features/reader/providers/reader_preferences.dart';
import 'package:selene/features/reader/widgets/reorder_dialog.dart';
import 'package:selene/features/reader/widgets/setting_button.dart';
import 'package:selene/features/reader/widgets/setting_sheet.dart';
import 'package:selene/utils/enums.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class ReaderPage extends ConsumerStatefulWidget {
  const ReaderPage({super.key, required this.work, this.chapter});

  final WorkEntity work;
  final int? chapter;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReaderPageState();
}

class _ReaderPageState extends ConsumerState<ReaderPage>
    with AutoRouteAwareStateMixin<ReaderPage> {
  bool showControls = false;
  final List<ReaderOptionButton> _buttonOptions =
      ReaderOptionButton.values.toList();

  @override
  void initState() {
    super.initState();

    Future(() {
      // Reorder _buttonOptions based on the saved preferences
      final readerPrefs = ref.read(readerPreferencesProvider);
      final savedOptions = readerPrefs.buttonOptions.get();
      _buttonOptions.sort((a, b) {
        return savedOptions.indexOf(a).compareTo(savedOptions.indexOf(b));
      });
    });
  }

  @override
  void didPush() {
    Future(() => ref.read(fullscreenProvider.notifier).set(true));
  }

  @override
  void didPop() {
    Future(() => ref.read(fullscreenProvider.notifier).set(false));
  }

  void toggleControls() {
    setState(() {
      showControls = !showControls;
    });
    _notify();
  }

  void setControls(bool show) {
    setState(() {
      showControls = show;
    });
    _notify();
  }

  void _notify() {
    if (showControls) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
  }

  Widget _getOption(BuildContext context, ReaderOptionButton option) {
    final readerPrefs = ref.watch(readerPreferencesProvider);

    return switch (option) {
      ReaderOptionButton.readingMode => IconButton(
        icon: Icon(Symbols.phonelink_setup, fill: 1.0),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SettingSheet(
                title: 'Reading Mode',
                options:
                    ReadingMode.values.map((e) {
                      return SettingOption(
                        label: e.label,
                        icon: e.icon,
                        value: e,
                      );
                    }).toList(),
                pref: readerPrefs.readingMode,
              );
            },
          );
        },
      ),
      ReaderOptionButton.screenRotation => IconButton(
        icon: Icon(Symbols.screen_rotation, fill: 0.0),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SettingSheet(
                title: 'Rotation',
                options:
                    ScreenRotation.values.map((e) {
                      return SettingOption(
                        label: e.label,
                        icon: e.icon,
                        value: e,
                      );
                    }).toList(),
                pref: readerPrefs.screenRotation,
              );
            },
          );
        },
      ),
      ReaderOptionButton.readerColors => IconButton(
        icon: Icon(Symbols.palette, fill: 1.0),
        onPressed: () {},
      ),
      ReaderOptionButton.settings => IconButton(
        icon: Icon(Symbols.settings, fill: 1.0),
        onPressed: () {},
      ),
      _ => IconButton(
        icon: Icon(Symbols.question_mark, fill: 1.0),
        onPressed: () {},
      ),
    };
  }

  List<Widget> _getOptions(BuildContext context) {
    final readerPrefs = ref.watch(readerPreferencesProvider);

    List<ReaderOptionButton> buttonsToShow = readerPrefs.buttonOptions.get();

    // restrict to 5 buttons
    if (buttonsToShow.length > 4) {
      buttonsToShow = buttonsToShow.sublist(0, 4);
    }

    final options = [
      for (var button in buttonsToShow) _getOption(context, button),
      IconButton(
        icon: Icon(Symbols.more_vert, fill: 1.0),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return ReorderDialog(
                onSave: (options) {
                  readerPrefs.buttonOptions.set(options);
                },
              );
            },
          );
        },
      ),
    ];

    return options;
  }

  @override
  Widget build(BuildContext context) {
    final readerPrefs = ref.watch(readerPreferencesProvider);

    int selectedChapter = widget.chapter ?? 1;
    final multiLineButtons = readerPrefs.multiLineButtons.get();
    final systemNavigationHeight = context.mediaQuery.viewPadding.bottom;

    final options = _getOptions(context);
    final numColumns = 5;
    final numRows = (options.length / numColumns).ceil();

    return Scaffold(
      appBar: PaddedAppBar(
        title: Text(widget.work.title),
        subtitle: 'Chapter $selectedChapter',
        visible: showControls,
      ),
      body: GestureDetector(
        onTap: toggleControls,
        child: Container(
          color: Colors.transparent,
          child: Empty(
            message: 'Reader is not yet implemented.',
            actions: [
              EmptyAction(
                text: 'Go back',
                icon: Symbols.arrow_back,
                onPressed: () {
                  context.router.back();
                },
              ),
              EmptyAction(
                text: 'Toggle fullscreen',
                icon: Symbols.fullscreen,
                onPressed: toggleControls,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedVisibility(
        visible: showControls,
        enter: slideInVertically(initialOffsetY: 1.0, curve: kAnimationCurve),
        enterDuration: kAnimationDuration,
        exit: slideOutVertically(targetOffsetY: 1.0, curve: kAnimationCurve),
        exitDuration: kAnimationDuration,
        child: Container(
          color: context.scheme.surfaceContainer,
          padding: EdgeInsets.fromLTRB(
            16.0,
            16.0,
            16.0,
            16.0 + systemNavigationHeight,
          ),
          width: double.infinity,
          child:
              multiLineButtons
                  // If multi-line, separate into X rows of 5 columns
                  ? LayoutGrid(
                    gridFit: GridFit.loose,
                    columnSizes:
                        List.generate(numColumns, (_) => 1.fr).toList(),
                    columnGap: 8.0,
                    rowSizes: List.generate(numRows, (_) => auto).toList(),
                    rowGap: 8.0,
                    children:
                        options.map((option) {
                          return option;
                        }).toList(),
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 4.0,
                    children: _getOptions(context),
                  ),
        ),
      ),
    );
  }
}
