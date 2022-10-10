import 'package:auto_route/auto_route.dart';
import 'package:auto_router/router/app.router.gr.dart';
import 'package:flutter/material.dart';

class TabBarNavigation extends StatelessWidget {
  const TabBarNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [HomeRouter(), ListUserRouter()],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Chat'),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.home)),
                Tab(text: '2', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
          // bottomNavigationBar: BottomNavigationBar(
          //       currentIndex: tabsRouter.activeIndex,
          //       onTap: tabsRouter.setActiveIndex
          //       items: [
          //         BottomNavigationBarItem(label: 'Books',...),
          //         BottomNavigationBarItem(label: 'Profile',...),
          //         BottomNavigationBarItem(label: 'Settings',...),
          //       ],
          //     ),
        );
      },
    );
  }
}
