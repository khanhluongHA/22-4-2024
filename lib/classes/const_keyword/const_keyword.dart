// const và final tương đương nhau cùng là giá trị không thể thay đổi, final được gán sau
// sử dụng const trong câu lệnh điều kiện
void checkNull() {
  const bool isTrue = true;
  if (isTrue) {
    print('this is true');
  } else {
    print('this is fails');
  }
}

// sử dụng const trong khai báo hàm
//tạo const từ 1 lớp const
class Shape {
  const Shape();
  void draw() {
    print('Drawing a shape');
  }
}

class Circle extends Shape {
  final double radius;
  const Circle(this.radius);
  @override
  void draw() {
    super.draw();
    print('drawing a circle with radius $radius');
  }
}

void printShapes() {
  const Circle circle = Circle(2.0);
  circle.draw();
}
