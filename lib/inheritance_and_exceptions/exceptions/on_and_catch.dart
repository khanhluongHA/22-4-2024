// là phần quan trọng để sử lý trong ngoại lệ
// chúng dùng để bắt và sử lý ngoại lệ cụ thể
// ví dụ
void exception() {
  try {
    int result = 10 ~/ 0; // nó sẽ gây ra ngoại lệ
    print("kết quả: $result");
  } on IntegerDivisionByZeroException {
    //sử lý lỗi ngoại lệ
    print('Không thể chia cho 0');
  } catch (e) {
    // sử lý các ngoại lệ khác
    print('Lỗi $e');
  }
}

void list() {
  var lists = [1, 23, 4, 5];
  try {
    print(lists[2]);
  } catch (e) {
    print('đã sảy ra lỗi:$e');
  }
}

