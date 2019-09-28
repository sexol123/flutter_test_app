import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ColorHomePage/ColorBlock.dart';
import 'ColorHomePage/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Test App Home'),
      home: BlocProvider<ColorBloc>(
        builder: (context) => ColorBloc(),
        child: MyHomePage(),
      ),
    );
  }
}
