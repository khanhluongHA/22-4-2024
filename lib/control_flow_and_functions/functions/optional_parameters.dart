//Optional parameters (tham số được đặt tên)
//Named parameters (tham số được đặt tên)

void newts({int? a, int? b}) {
  print("$a");
  print("$b");
  // print("a+b = $a+$b");
}

void transmit() {
  newts(a: 10, b: 20);
}

void named(int x, {int z = 0}) {
  print("$x");
  print("$z");
}
void printf() {
  named(20);
}
