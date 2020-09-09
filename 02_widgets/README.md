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
    |
  **Center**
    |
    |
  **Text**
    |
    |
 **TextStyle**
 
- Container: You can use `Container` widget class when you wish to customize properties like padding, margins, borders, or background color  of the child widgets.

- Center: This helps centers its content horizontally and vertically.

- Text: The Text widget displays a string of text with single style. The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle.

- TextStyle: This helps us specify the text style. This is immutable style.