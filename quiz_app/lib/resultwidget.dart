
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {

  final String score;
  ResultWidget({this.score});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Result page"),
        ),
        body: Center(
          child: Container(
            child: Text(
              "You scored "+score,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
