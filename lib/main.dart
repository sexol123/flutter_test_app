import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Test App Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const int MAX_VALUE_RGB = 255;
  Color _color = Colors.blueAccent;

  Color _getRandomColor() {
    int r =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(MAX_VALUE_RGB);
    int g =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(MAX_VALUE_RGB);
    int b =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(MAX_VALUE_RGB);
    int a =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(MAX_VALUE_RGB);

    return Color.fromARGB(a, r, g, b);
  }

  void _changeColorToRandom() {
    setState(() {
      _color = _getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: _color,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hey there",
                style: TextStyle(backgroundColor: Colors.white, fontSize: 32),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        _changeColorToRandom();
      },
    );
  }
}
