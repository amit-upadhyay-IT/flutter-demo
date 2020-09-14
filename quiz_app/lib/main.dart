import 'package:flutter/material.dart';
import 'package:quiz_app/quizContent.dart';

void main() {
  runApp(MyApp());
}

/*
 * this is the main app widget
 * it is meant to have MaterialApp
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QuizApp",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App", style: TextStyle(fontSize: 20, color: Colors.white),),
        ),
        body: QuestionBodyWidget(),
      ),
    );
  }
}
