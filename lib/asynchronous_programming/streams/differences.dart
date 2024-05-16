void searchList() {
  List<int> list1 = [1, 2, 3, 4, 5, 6];
  List<int> list2 = [2, 3, 4, 5, 6, 7];
  // tìm phần tử trong List1 nhưng không có trong List 2
  List<int> differences = [];
  for (var num in list1) {
    if (!list2.contains(num)) {
      differences.add(num);
    }
  }
  print('các số có trong list 1 không có trong list 2 là: $differences');
}
