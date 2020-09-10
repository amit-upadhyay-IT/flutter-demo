# widgets

Widgets are the building blocks of a Flutter application.

Let us understand widgets in a very basic app with some message being displayed on home.

```dart
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Hi there!, what happened with Kangana was wrong in my opinion!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
      decoration: BoxDecoration(color: Colors.white),
    );
  }
}
```

`MyApp` is a widget which represents the app view. The main widget can always be breakdown into different components (or widgets) known as **Widget Tree**.

Widget tree is a structure that represents how our widgets are organized. Let us look at the widget tree for this application:

 **Container**
    |
  **Center**
    |
  **Text**
    |
 **TextStyle**
 
- Container: You can use `Container` widget class when you wish to customize properties like padding, margins, borders, or background color  of the child widgets.

- Center: This helps centers its content horizontally and vertically.

- Text: The Text widget displays a string of text with single style. The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle.

- TextStyle: This helps us specify the text style. This is immutable style.


Another sample app:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi There!',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Center(
            child: Text(
              'what happened with Kangana was wrong in my opinion!',
            )
        ),
      ),
    );
  }
}
```

The widget tree for the above app would look like: 


        MaterialApp
            |
        Scaffold
        /       \
    AppBar      Center
                    |
                  Text

- MaterialApp: A convenience widget that wraps a number of widgets that are commonly required for material design applications.

- Scaffold: it provides a default banner, background color, and has API for adding drawers, snack bars, and bottom sheets.

- AppBar: Top title bar which usually contains app title.


## StatelessWidget
Till now, each of the widget has implemented `StatelessWidget`, this means the widget is not maintaining any state. Note that the StatelessWidget only requires a single method build to be implemented in its derived class.
