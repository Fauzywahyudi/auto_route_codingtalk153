import 'package:auto_route/auto_route.dart';
import 'package:coding_talk_153/config/routes.gr.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  final int number;
  final String nama;

  const Secondpage({this.number, this.nama});
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () => ExtendedNavigator.root.push('/user/2'),
      ),
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${widget.nama} #${widget.number}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
