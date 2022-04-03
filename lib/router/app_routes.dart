import 'package:flutter/material.dart';
import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
// ignore: constant_identifier_names
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
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
        icon: Icons.card_membership),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'animation',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
