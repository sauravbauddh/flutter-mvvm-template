import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/home_view.dart';
import 'package:mvvm/view/login_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return _buildPageRoute(const HomeView());
      case RoutesName.login:
        return _buildPageRoute(const LoginView());
      default:
        return _buildPageRoute(
          const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _buildPageRoute(Widget page) {
    return MaterialPageRoute<dynamic>(builder: (ctx) => page);
  }
}
