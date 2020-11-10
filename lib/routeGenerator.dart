

import 'package:flutter/material.dart';
import 'package:giraffenative/Navigation/Home/Screen/HomePage.dart';
import 'Navigation/CreateAccount/Screen/Register_Account_Page.dart';
import 'Navigation/Login/Screen/LoginPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/homepage' :
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => RegisterAccountPage());
    }
  }
}