import 'package:dart4_oops/singleinheritence.dart';

abstract class ShapePerimeter {
  num getPerimeter();
}

class Circle implements ShapePerimeter, Shape {
  int _length;
  @override
  set breath(int ibre) {
    // TODO: implement breath
  }

  @override
  num getArea() {
    return (3.14 * _length * _length);
  }

  @override
  num getPerimeter() {
    return (2 * 3.14 * _length);
  }

  @override
  set length(int ilen) {
    _length = ilen;
  }

  // TODO: implement name
  @override
  String get name => 'Circle';
}
