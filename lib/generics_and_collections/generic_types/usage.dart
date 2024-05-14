// kiểu dữ liệu không trùng lặp
class UniqueSet<T> {
  final Map<T, bool> _element = {};
  void add(T elements) {
    _element[elements] = true;
  }

  List<T> get elements => _element.keys.toList();
}

void addUniqueSet() {
  var uniqueIntegers = UniqueSet<int>();
  uniqueIntegers.add(1);
  uniqueIntegers.add(2);
  uniqueIntegers.add(3);
  uniqueIntegers.add(1); // không them được vì vị trí đã tồn tại

  var uniqueString = UniqueSet<String>();
  uniqueString.add('apple');
  uniqueString.add('orange');
  uniqueString.add('apple');
  print('int: ${uniqueIntegers.elements}');
  print('String: ${uniqueString.elements}');
}
// trong đây có 2 cái giống nhau nên nó sẽ không được thêm vào tránh việc trùng lặp
