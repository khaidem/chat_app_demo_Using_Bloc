// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i7;

import '../Home/pages/home.page.dart' as _i4;
import '../Home/pages/list_user.page.dart' as _i5;
import '../Onbaording/pages/onbaording.page.dart' as _i2;
import 'tab_bar.router.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    TabBarRootPage.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabBarNavigation(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnBoardingPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ListUserRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    ListUserRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ListUserPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          TabBarRootPage.name,
          path: '/tab-bar-navigation',
          children: [
            _i6.RouteConfig(
              HomeRouter.name,
              path: 'Home',
              parent: TabBarRootPage.name,
              children: [
                _i6.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            _i6.RouteConfig(
              ListUserRouter.name,
              path: 'ListUser',
              parent: TabBarRootPage.name,
              children: [
                _i6.RouteConfig(
                  ListUserRoute.name,
                  path: '',
                  parent: ListUserRouter.name,
                )
              ],
            ),
          ],
        ),
        _i6.RouteConfig(
          OnBoardingRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.TabBarNavigation]
class TabBarRootPage extends _i6.PageRouteInfo<void> {
  const TabBarRootPage({List<_i6.PageRouteInfo>? children})
      : super(
          TabBarRootPage.name,
          path: '/tab-bar-navigation',
          initialChildren: children,
        );

  static const String name = 'TabBarRootPage';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(
          OnBoardingRoute.name,
          path: '/',
        );

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'Home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ListUserRouter extends _i6.PageRouteInfo<void> {
  const ListUserRouter({List<_i6.PageRouteInfo>? children})
      : super(
          ListUserRouter.name,
          path: 'ListUser',
          initialChildren: children,
        );

  static const String name = 'ListUserRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ListUserPage]
class ListUserRoute extends _i6.PageRouteInfo<void> {
  const ListUserRoute()
      : super(
          ListUserRoute.name,
          path: '',
        );

  static const String name = 'ListUserRoute';
}
