import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_router/router/tab_bar.router.dart';

import '../Home/pages/home.page.dart';
import '../Home/pages/list_user.page.dart';

const rootPage = AutoRoute(
  page: TabBarNavigation,
  name: 'TabBarRootPage',
  // initial: true,
  children: [
    AutoRoute(
      path: "Home",
      name: "HomeRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HomePage),
      ],
    ),
    AutoRoute(
      path: "ListUser",
      name: "ListUserRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ListUserPage),
      ],
    ),
  ],
);
