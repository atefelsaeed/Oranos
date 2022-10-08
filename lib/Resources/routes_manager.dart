import 'package:flutter/material.dart';

import '../Presentation/Screens/ChatScreen/chat_screen.dart';
import '../Presentation/Screens/HomeScreen/home_dashboard.dart';
import '../Presentation/Screens/IntroScreen/intro_screen.dart';
import '../Presentation/Screens/SplashScreen/splash_screen.dart';

class Routes {
  static const String splashRoute = '/';
  static const String introScreenRoute = '/introScreen';
  static const String homeDashBoardRoute = '/HomeDashBoard';
  static const String chatScreenRoute = '/ChatScreen';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.introScreenRoute:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case Routes.homeDashBoardRoute:
        return MaterialPageRoute(builder: (_) => const HomeDashBoard());
      case Routes.chatScreenRoute:
        return MaterialPageRoute(builder: (_) => const ChatScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Found'),
              ),
              body: const Center(
                child: Text('No Route Found'),
              ),
            ));
  }
}
