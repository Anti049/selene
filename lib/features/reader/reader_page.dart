import 'package:animated_visibility/animated_visibility.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/empty.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/providers/fullscreen_provider.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/reader/providers/reader_preferences.dart';
import 'package:selene/features/reader/widgets/setting_button.dart';
import 'package:selene/features/reader/widgets/setting_sheet.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/utils/enums.dart';

@RoutePage()
class ReaderPage extends ConsumerStatefulWidget {
  const ReaderPage({super.key, required this.story, this.chapter});

  final Story story;
  final int? chapter;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReaderPageState();
}

class _ReaderPageState extends ConsumerState<ReaderPage>
    with AutoRouteAwareStateMixin<ReaderPage> {
  bool showControls = false;

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

  @override
  Widget build(BuildContext context) {
    final readerPrefs = ref.watch(readerPreferencesProvider);

    int selectedChapter = widget.chapter ?? 1;

    return Scaffold(
      appBar: PaddedAppBar(
        title: Text(widget.story.title ?? 'Story'),
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
        enter: slideInVertically(
          initialOffsetY: 1.0,
          curve: Curves.easeInOutCubic,
        ),
        enterDuration: const Duration(milliseconds: 200),
        exit: slideOutVertically(
          targetOffsetY: 1.0,
          curve: Curves.easeInOutCubic,
        ),
        exitDuration: const Duration(milliseconds: 200),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
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
              IconButton(
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
              IconButton(
                icon: Icon(Symbols.phonelink_setup, fill: 1.0),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Symbols.settings, fill: 1.0),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
