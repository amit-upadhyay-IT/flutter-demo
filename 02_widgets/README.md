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
The above widgets has implemented `StatelessWidget`, this means the widget is not maintaining any state. Note that the StatelessWidget only requires a single method `build` to be implemented in its derived class. As the name suggests that these type of widgets are without any states, i.e. they does not have any property which will change the view of the widgets.
**NOTE: it may contain widget derived from StatefulWidget.**


## StatefulWidget
These are the widgets with some state defined. Consider an example: If you want to animate a widget then you will need to store information like initial dimension of the widget and final dimension of the widget as the parameters to change the display whenever required, So `animation` widgets are stateful widgets. Later I will write more about them.

## Platform independent/basic widgets
- **Text**: Text widget is used to display a message.
```dart
Text('Hi there!', style: TextStyle(fontWeight: FontWeight.bold));
```
- **Image**: display an image in the application.
    - There are different constructors for the Image widget:
        - Image.asset - Load image from flutter project’s assets
        - Image.file - Load image from system folder.
        - Image - Generic image loader using ImageProvider
        - Image.Network - Load image from network
        - Image.memory - Load image from memory
        
    The most used method is `Image.asset`.

- **Icon**: Icon widget is used to display a glyph from a font described in IconData class.

**There can be several categorization of widgets, for example**
- **visible widget** vs **invisible widget(also known as layout widgets)**
- **Stateless widget** vs **Stateful widget**
- In terms of layout widget, like **Single-child layout widgets** vs **Multi-child layout widgets**
- **Material widget** vs **non-material widget** (the fact that makes it flexible is that either of the widget can be used inside other type widget)
- Platform specific widgets (**material widgets** vs **Cupertino widgets**), this is discussed above.

### Visible Widget:
The UI elements which are visible in the application.

### Invisible Widget/Layout widget:
The positioning of the visible widget or containers of the visible widget are known as Invisible widget.

All layout widgets have either of the following:

- A `child` property if they take a single child—for example, Center or Container.
- A `children` property if they take a list of widgets—for example, Row, Column, ListView, or Stack.


## build method
Yes, you guessed it right, it is used to build a widget. The framework calls this method when this widget is inserted into the tree in a given `BuildContext` (A handle to the location of a widget in the widget tree) and when the dependencies of this widget change. 