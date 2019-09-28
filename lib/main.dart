import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ColorHomePage/ColorBlock.dart';
import 'ColorHomePage/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<ColorBloc>(
        builder: (context) => ColorBloc(),
        child: MyHomePage("MyHomePage"),
      ),
    );
  }
}
