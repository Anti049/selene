import 'package:auto_route/auto_route.dart';
import 'package:selene/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|Tab,Route')
class SeleneRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      path: '/',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'library', page: LibraryRoute.page),
        AutoRoute(path: 'updates', page: UpdatesRoute.page),
        AutoRoute(path: 'history', page: HistoryRoute.page),
        AutoRoute(
          path: 'browse',
          page: BrowseRoute.page,
          children: [
            AutoRoute(path: 'sources', page: SourcesRoute.page),
            AutoRoute(path: 'extensions', page: ExtensionsRoute.page),
            AutoRoute(path: 'migrate', page: MigrateRoute.page),
          ],
        ),
        AutoRoute(path: 'more', page: MoreRoute.page),
      ],
    ),
    CustomRoute(
      path: '/library/options',
      page: LibraryOptionsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      durationInMilliseconds: 200,
      reverseDurationInMilliseconds: 200,
      children: [
        AutoRoute(path: 'tags', page: TagsRoute.page),
        AutoRoute(path: 'filters', page: FiltersRoute.page),
        AutoRoute(path: 'sort', page: SortRoute.page),
        AutoRoute(path: 'display', page: DisplayRoute.page),
      ],
    ),
    AutoRoute(path: '/library/details/:id', page: StoryDetailsRoute.page),
    AutoRoute(path: '/settings', page: SettingsRoute.page),
    AutoRoute(path: '/settings/appearance', page: AppearanceSettingsRoute.page),
    AutoRoute(
      path: '/settings/appearance/theme-selection',
      page: ThemeSelectionRoute.page,
    ),
    AutoRoute(path: '/settings/library', page: LibrarySettingsRoute.page),
    AutoRoute(path: '/settings/advanced', page: AdvancedSettingsRoute.page),
    AutoRoute(path: '/settings/about', page: AboutSettingsRoute.page),
  ];
}
