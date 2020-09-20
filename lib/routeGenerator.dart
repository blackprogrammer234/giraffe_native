import 'package:flutter/material.dart';
import 'package:giraffenative/HomePage.dart';
import 'package:giraffenative/LoginPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/homepage' :
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}