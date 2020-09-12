import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout sample app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Center(
            child:RaisedButton(
              onPressed: () { print ('fkasldf'); },
              child: Text(
                'ButtonText',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
            )
        ),
      ),
    );
  }

}

class MyButton extends StatelessWidget {
  MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
                left: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
                right: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
                bottom: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
              ),
              color: Colors.grey,
            ),
            child: const Text(
              'Don\'t touch it!',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
            ),
        ),
    );
  }
}