void sum() {
  var sums = 0;
  for (int number in [1, 2, 3, 4, 5, 6, 7, 8]) {
    if (number % 2 == 0) {
      sums += number;
    } else {
      print("các số lẻ là: $number");
    }
  }
  print("tổng số chẵn là: $sums");
}

void divisible() {
  List<int> numbers = List.generate(20, (index) => index);

  int sum = 0;
  List<int> divisibleBy3Or5 = [];
  for (var number in numbers) {
    if (number % 3 == 0 || number % 5 == 0) {
      divisibleBy3Or5.add(number);
      sum += number;
    }
    print("các số chia hết cho 3 hoặc 5 là: $divisibleBy3Or5");
  }
  print("tổng các số chia hết cho 3 và 5 là: $sum");
}
