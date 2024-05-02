// ví dụ giải phương trình bậc 2
import 'dart:math';

void quadratic(double a, double b, double c) {
  double delta = pow(b, 2) - 4 * a * c;
  if (delta > 0) {
    //phương trình có 2 nghiệm phân biệt
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('phương trình có 2 nghiệm phân biệt');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('x = $x');
  } else {
    print("vô nghiệm");
  }
}

void input() {
  double a = 4;
  double b = -3;
  double c = 1;
  quadratic(a, b, c);
}
