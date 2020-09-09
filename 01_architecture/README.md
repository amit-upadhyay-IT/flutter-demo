
# Architecture

**Flutter is built using a layered architecture where each layer is dependent on its underlying layer.**

**Example**:

![alt text](https://flutter.dev/images/arch-overview/archdiagram.png)

Here I will discuss only the Flutter/Dart framework layer and its sub-layers.

## Widgets

In Flutter, Everything is a widget, the application is itself a widget. The application is the top-level widget and its UI is build using one or more children (widgets), which again build using its children widgets. This composition is represented using a tree, also called as **Widget Tree**.

An example of a Widget tree can be found here: https://flutter.dev/docs/development/ui/layout


## Gestures

This is also a widget, but a special type of widget which allows interaction with the other widgets (visible or invisible widgets). The special type widget is named as `GestureDetector` (an invisible widget of-course). `GestureDetector` class gives us the ability to write listeners for touch, zoom-in, zoom-out, drag for its **child widgets**.

##  Material and Cupertino

### Material:
- Android-specific widgets are designed in accordance with Material design guidelines by Android OS. Android-specific widgets are called as Material widgets.

### Cupertino:
- iOS-specific widgets are designed in accordance with Human Interface Guidelines by Apple and they are called Cupertino widgets.