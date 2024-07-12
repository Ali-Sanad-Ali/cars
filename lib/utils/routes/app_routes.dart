import 'package:cars_app/views/authentication/screens/forget_password.dart';
import 'package:cars_app/views/authentication/screens/login.dart';
import 'package:cars_app/views/authentication/screens/option_page.dart';
import 'package:cars_app/views/authentication/screens/registeration.dart';
import 'package:cars_app/views/home/screen/home.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/optionPage';
  static const String login = '/login';
  static const String resetPassword = '/resetPassword';
  static const String signUp = '/signUp';
  static const String homePage = '/homePage';
  static const String profilePage = '/profilePage';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => OptionPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => ForgetPassword());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => Registeration());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child:
                          Text('No route defined for ${routeSettings.name}')),
                ));
    }
  }
}
