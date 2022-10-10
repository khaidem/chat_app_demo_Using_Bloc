// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:auto_router/Onbaording/pages/onbaording.page.dart';
import 'package:auto_router/router/root.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[rootPage, AutoRoute(page: OnBoardingPage, initial: true)],
)
class $AppRouter {}
