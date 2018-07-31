abstract class Shape {
  String get name;

  set length(int ilen);
  set breath(int ibre);
  num getArea();
}

class Rectangle extends Shape {
  int _length, _breath;
  @override
  set breath(int ibre) {
    _breath = ibre;
  }

  @override
  num getArea() {
    return _length * _breath;
  }

  @override
  set length(int ilen) {
    _length = ilen;
  }

  @override
  String get name => 'Rectangles';
}
