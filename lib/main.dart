import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: ballPage(),
      ),
    ),
  );
}

class ballPage extends StatefulWidget {
  const ballPage({Key? key}) : super(key: key);

  @override
  State<ballPage> createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int ballNumber = 1;

  void changeBallnumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallnumber();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
