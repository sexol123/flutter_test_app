import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  @override
  Color get initialState => Colors.blueAccent;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield _getRandomColor();
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
}

enum ColorEvent { changeColor }
