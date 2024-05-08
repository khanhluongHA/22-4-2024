class Vector {
  double x, y;
  Vector(this.x, this.y);
  Vector operator +(Vector v) {
    return Vector(x + v.x, y + v.y);
  }
}

void sumVector() {
  var v1 = Vector(2, 3);
  var v2 = Vector(1, 9);
  var sum = v1 + v2;
  print('Vector sum: (${sum.x}, ${sum.y})');
}
