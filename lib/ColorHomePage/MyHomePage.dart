import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/ColorHomePage/ColorBlock.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return GestureDetector(
      child: BlocBuilder<ColorBloc, Color>(
        builder: (context, color) {
          return Scaffold(
            backgroundColor: color,
            appBar: AppBar(
              title: Text(title),
              backgroundColor: color,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hey there",
                    style:
                        TextStyle(backgroundColor: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      onTap: () {
        print("Click");
        colorBloc.dispatch(ColorEvent.changeColor);
      },
    );
  }
}
