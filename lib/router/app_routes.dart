import 'package:flutter/material.dart';
import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
// ignore: constant_identifier_names
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listView1',
        name: 'List View1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listView2',
        name: 'List View2 Screen ',
        screen: const ListView2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListView1Screen(),
    'listView2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
 */
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
