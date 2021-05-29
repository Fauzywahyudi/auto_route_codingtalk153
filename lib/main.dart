import 'package:coding_talk_153/config/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: route.ExtendedNavigator<AppRouter>(
        router: AppRouter(),
      ),
    );
  }
}
