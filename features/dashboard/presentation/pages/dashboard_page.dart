import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:hotel_booking/core/navigation/navigation.dart';
import 'package:hotel_booking/i18n/strings.g.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        OverviewRoute(),
        HotelsRoute(),
        FavoritesRoute(),
        AccountRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              label: t.overview.label,
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore),
            ),
            NavigationDestination(
              label: t.hotels.label,
              icon: Icon(Icons.hotel_outlined),
              selectedIcon: Icon(Icons.hotel),
            ),
            NavigationDestination(
              label: t.favorites.label,
              icon: Icon(Icons.favorite_outline),
              selectedIcon: Icon(Icons.favorite),
            ),
            NavigationDestination(
              label: t.account.label,
              icon: Icon(Icons.account_circle_outlined),
              selectedIcon: Icon(Icons.account_circle),
            ),
          ],
        );
      },
    );
  }
}
