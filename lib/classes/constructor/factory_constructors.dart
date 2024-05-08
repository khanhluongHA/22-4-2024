import 'dart:math';

import 'package:flutter_tutorial/classes/constructor/initializer_list.dart';

class Logger {
  final String name;
  bool mute = false;
  Logger._internal(this.name);
  // cache chứa các intance đã tạo
  static final Map<String, Logger> _cache = {};
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  void log(String msg) {
    if (!mute) {
      print('name: $msg');
    }
  }
}

void printLogger() {
  var logger1 = Logger('ui');
  logger1.log('Button click');
  var logger2 = Logger('ui');
  logger2.log('form submit');
  print(identical(logger1, logger2));
}

abstract class Shape {
  double get area;
  factory Shape(String type) {
    switch (type) {
      case 'circle':
        return Circle(2.0);
      case 'rectangle':
        return Rectangle(3.0, 4.0);
      default:
        return Shape(type);
    }
  }
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  @override
  double get area => 3.14 * radius * radius;
}

class Rectangle implements Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
  double get acreage => width * height;
  
  @override
  // TODO: implement area
  double get area => width * height;
}
void checkShape() {
  var circle = Shape('circle');
  var rectangle = Shape('rectangle');
  
  print('Circle area: ${circle.area}');
  print('Rectangle area: ${rectangle.area}');
}
