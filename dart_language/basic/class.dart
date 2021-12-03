/** Dart Class
 * just like Java
 * every class implicitly interface
 */

import 'dart:math';

class Point {
  double x = 0;
  double y = 0;
  double z = 0;
  /*
  Point(double x, double y, double z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
  */
  // more simple constructor
  Point(this.x, this.y, this.z);
  // custome constructor
  Point.fromJson(Map mapData) {
    x = mapData['x'];
    this.y = mapData['y'];
  }
  @override
  String toString() {
    return "$x, $y, $z";
  }

  double distanceTo(Point point) {
    return sqrt((point.x - x) * (point.x - x) + (point.y - y) * (point.y - y));
  }

  Point operator - (Point point) => Point(this.x - point.x, this.y - point.y, this.z - point.z);

  // getter
  double get norm => sqrt(x * x + y * y);

}

void main() {
  var point = Point(1, 2, 3);
  print(point.toString());
  point = Point.fromJson({'x': 10.0, 'y' : 1.0});
  print(point.toString());
  final otherPoint = Point(4, 5, 6);
  print((point - otherPoint).toString());
  print((point - otherPoint).distanceTo(point));
  print(point.norm); // use as a attribute
}