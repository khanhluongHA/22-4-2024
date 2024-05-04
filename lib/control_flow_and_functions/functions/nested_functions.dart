// hàm lồng nhau
void example() {
  void outerFunction() {
    print('this is outer function');
    void innerFunction() {
      print('this is inner function');
    }

    innerFunction();
  }

  outerFunction();
}

void factorial() {
  int factorialN(int n) {
    int calculateFactorial(int m) {
      if (m == 1) {
        return m;
      } else {
        return m * calculateFactorial(m - 1);
      }
    }

    return calculateFactorial(n);
  }

  print('!5 = ${factorialN(5)};');
  print('!7 =${factorialN(7)}');
}

void exercise() {
  Object quicksort(List<int> list) {
    if (list.length <= 1) {
      return list;
    }
    int pivot = list[list.length ~/ 2];
    List<int> less = [];
    List<int> greater = [];
    void partition() {
      for (var i = 0; i < list.length; i++) {
        if (list[i] < pivot) {
          less.add(list[i]);
        } else if (list[i] > pivot) {
          greater.add(list[i]);
        }
      }
    }

    partition();
    return (quicksort(less), pivot, quicksort(greater));
  }

  List<int> numbers = [5, 3, 4, 6, 7, 22, 10, 9, 12, 31, 11, 2, 21];
  print('before sorting: $numbers');
  Object sortedNumbers = quicksort(numbers);
  print('after sorting: $sortedNumbers');
}
