import 'package:auto_route/auto_route.dart';
import 'package:coding_talk_153/config/routes.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () => ExtendedNavigator.root.push(
          Routes.secondpage,
          arguments: SecondpageArguments(
            nama: 'Udacoding, Coding Talk',
            number: 153,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Container(),
    );
  }
}
