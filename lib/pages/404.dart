import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NotFound404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOT FOUND'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('NOT FOUND (404)'),
              ElevatedButton(
                onPressed: () => ExtendedNavigator.root.pop(),
                child: Text('Go Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
