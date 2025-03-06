import 'package:appbar_animated/appbar_animated.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/action_button.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/providers/banners_provider.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/library/screens/details/providers/scroll_provider.dart';
import 'package:selene/features/library/screens/details/widgets/expandable_description.dart';
import 'package:selene/features/settings/screens/appearance/themes/data/themes.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/utils/theming.dart';

@RoutePage()
class StoryDetailsPage extends ConsumerWidget {
  const StoryDetailsPage({super.key, required this.story});

  final Story story;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BannerScaffold(
      appBar: PaddedAppBar(
        title: Text(story.title ?? ''),
        actions: [
          IconButton(icon: const Icon(Symbols.share), onPressed: () {}),
          IconButton(icon: const Icon(Symbols.more), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Row(
                  children: [
                    // TODO: Add image
                    AspectRatio(
                      aspectRatio: 1 / 1.6,
                      child: Container(color: Colors.grey),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8.0,
                        children: [
                          Text(
                            story.title ?? '',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 6.0,
                            children: [
                              Icon(
                                Symbols.person,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Text(
                                'Author',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 6.0,
                            children: [
                              Icon(
                                Symbols.done_all,
                                size: 20,
                                weight: 600,
                                color: context.scheme.onSurfaceVariant,
                              ),
                              Text(
                                'Completed • ${story.title ?? ''}',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelLarge?.copyWith(
                                  color: context.scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row of icon buttons with labels
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: LayoutGrid(
                columnSizes: [auto, auto, auto, auto],
                rowSizes: [auto],
                children: [
                  ActionButton(
                    text: 'In Library',
                    icon: Symbols.favorite,
                    filled: true,
                    color: context.scheme.primary,
                    onPressed: () {},
                  ),
                  ActionButton(
                    text: '26 days',
                    icon: Symbols.hourglass,
                    color: context.scheme.onSurfaceVariant.withValues(
                      alpha: 0.5,
                    ),
                    onPressed: () {},
                  ),
                  ActionButton(
                    text: 'Tracking',
                    icon: Symbols.sync,
                    color: context.scheme.onSurfaceVariant.withValues(
                      alpha: 0.5,
                    ),
                    onPressed: () {},
                  ),
                  ActionButton(
                    text: 'WebView',
                    icon: Symbols.public,
                    color: context.scheme.onSurfaceVariant.withValues(
                      alpha: 0.5,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpandText(
                story.description ?? '',
                maxLines: 2,
                expandOnGesture: true,
              ),
            ),
            // TODO: Finish ExpandableDescription
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ExpandableDescription(
            //     description: story.description ?? '',
            //     maxLines: 2,
            //   ),
            // ),
            // Wrap-around list of tags
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  for (final tag in [
                    'Tag 1',
                    'Tag 2',
                    'Tag 3',
                    'Tag 4',
                    'Tag 5',
                  ])
                    Chip(label: Text(tag)),
                ],
              ),
            ),
            Container(height: 1000, color: Colors.red),
            Container(height: 1000, color: Colors.green),
            Container(height: 1000, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
