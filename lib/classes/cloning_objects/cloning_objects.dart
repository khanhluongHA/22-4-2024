// sao chép giá trị
// sử dụng phương thức clone
class Point {
  int x, y;
  Point(this.x, this.y);
  // tạo 1 phương thức clone giống y hệt ban đầu
  Point clone() {
    return Point(x, y);
  }
}

void reallyFake() {
  var original = Point(2, 10);
  var copy = original.clone(); // hàm sao chép
  print('original:(${original.x}, ${original.y})');
  print('copy:(${copy.x}, ${copy.y})');

  // thay đổi giá trị của bản sao
  copy.x = 10;
  copy.y = 30;
  print('original: (${original.x}, ${original.y})');
  print('copy: (${copy.x}, ${copy.y})');
}

// sử dụng hàm toán tử(spread operator(...))
// sao chép tham chiếu
void arr() {
  var array1 = [1, 2, 3, 4];
  var array2 = array1;
  print('array1: $array1');
  print('array2: $array2');

  array2[0] = 100;
  print('array1: $array1');
  print('array2: $array2');
}
