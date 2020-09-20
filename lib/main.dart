import 'package:flutter/material.dart';
import 'package:giraffenative/routeGenerator.dart';

void main() => runApp(AppBase());

class AppBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      );
  }

}






