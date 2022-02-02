// Dart imports:
import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  factory Point.start() {
    return Point(0, 0, 0);
  }

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    // AB = √(xb - xa)2 + (yb - ya)2 + (zb - za)2
    double distance = sqrt(pow((another.x - x), 2) +
        pow((another.y - y), 2) +
        pow((another.z - z), 2));

    return distance;
  }

  @override
  String toString() {
    return "x=$x, y=$y, z=$z";
  }
}
