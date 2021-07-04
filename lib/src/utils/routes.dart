import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/presentation/pages/home.dart';
import 'package:weather_app/presentation/pages/search.dart';
import 'package:weather_app/presentation/pages/splash_screen.dart';

class RouteGenerator {


  static Route onGenerateRoute(RouteSettings settings) {
    String name = settings.name;

    switch (name) {
      case '/':
        return getRouter(SplashScreen());
      case '/home':
        return getRouter(HomePage());
      case '/search':
        return getRouter(SearchWeather());
      default:
        return MaterialPageRoute(builder: (context) => Container(
          child: Center(
            child: Text('Page not Found'),
          ),
        ));
    }
  }
}

Route getRouter(Widget page) {
  return MaterialPageRoute(builder: (context) => page);
}