import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/models/screen_tab.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/router/router.gr.dart';

@RoutePage()
class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    final tabItems = [
      ScreenTab(title: 'Sources', route: const SourcesRoute()),
      const ScreenTab(title: 'Extensions', route: ExtensionsRoute()),
      const ScreenTab(title: 'Migrate', route: MigrateRoute()),
    ];

    return AutoTabsRouter.tabBar(
      routes: tabItems.map((item) => item.route).toList(),
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        return BannerScaffold(
          appBar: PaddedAppBar(
            title: Text('Browse'),
            actions: tabItems[router.activeIndex].actions,
            bottom: TabBar(
              controller: controller,
              tabs: tabItems.map((item) => item.tab).toList(),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
