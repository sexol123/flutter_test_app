import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/ColorHomePage/ColorBlock.dart';

class MyHomePage extends StatelessWidget {
  Color _color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

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
        colorBloc.dispatch(ColorEvent.changeColor);
      },
    );
  }

  Color _getRandomColor() {
    const int MAX_VALUE_RGB = 255;

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
    _color = _getRandomColor();
  }
}
