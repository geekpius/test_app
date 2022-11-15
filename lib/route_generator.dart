import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/views/home_view.dart';

class RouteGenerator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String routeName, {Object? args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static goBack() {
    return navigatorKey.currentState!.pop();
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(builder: (context) => const HomeView());


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        backgroundColor: kWhiteColor,
        body: Center(
          child: Text(
              'Page Not Found!',
              style: kBoldFontStyle.copyWith(fontSize: kSize16, color: kBlackColor),
          ),
        ),
      );
    });
  }
}
