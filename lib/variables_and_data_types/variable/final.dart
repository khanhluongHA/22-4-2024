import 'dart:math';

// đặt tên biến theo final thì không thể thay đổi VD:
final name = "abcxyzz";
// nếu cố tình thay đổi biến name thì sẽ bị sai
// name  = "abcdef";

int getRandomInteger() {
  Random random = Random();
  return random.nextInt(100);
}

void main() {
  final rand = getRandomInteger();
  print(rand);
}


