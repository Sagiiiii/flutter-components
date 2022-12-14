import 'package:fl_components/router/router.dart';
import 'package:fl_components/screens/listview_builder_screen.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOption = <MenuOption>[
    // TODO: borrar Home
    /** 
      MenuOption(
        route: '/home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home
      ),
    */
    MenuOption(
      route: '/alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.add_alert_rounded,
    ),
    MenuOption(
      route: '/card',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.card_travel_sharp,
    ),
    MenuOption(
      route: '/listview1',
      name: 'Listview1 Screen',
      screen: const Listview1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: '/listview2',
      name: 'Listview2 Screen',
      screen: const Listview2Screen(),
      icon: Icons.line_style,
    ),
    MenuOption(
      route: '/avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: '/animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: '/inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: '/slider',
      name: 'Sliders && Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow_outlined,
    ),
    MenuOption(
      route: '/listviewbuilder',
      name: 'Infinite Scroll & Pull to Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  AppRoutes(Icon icon);

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  '/listview1': (BuildContext context) => const Listview1Screen(),
  //  '/listview2': (BuildContext context) => const Listview2Screen(),
  //  '/card': (BuildContext context) => const CardScreen(),
  //  '/alert': (BuildContext context) => const AlertScreen(),
  //  '/home': (BuildContext context) => const HomeScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
