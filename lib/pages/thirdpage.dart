import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final id;

  const ThirdPage({
    @PathParam() this.id,
  });

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Container(
        child: Center(
          child: Text('Id User adalah ${widget.id}'),
        ),
      ),
    );
  }
}
