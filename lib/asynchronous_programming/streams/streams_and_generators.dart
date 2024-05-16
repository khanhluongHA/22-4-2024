// để tạo 1 stream bạn có thể dùng streamController hoặc Stream.fromIterable()
// hoặc Stream.periodic().
// ví dụ: về stream
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void createStream() {
  // tạo 1 stream từ iterable
  var stream = Stream.fromIterable(['haha', 2, 3, 4, 5]);
  // lắng nghe các giá trị từ stream
  stream.listen((event) {
    print(event);
  });
}

// generators: là cách để tạo ra dãy giá trị một cách linh hoạt mà không cần
// phải tạo ra chúng một lần
// khi cần các giá trị chỉ trả về 1 (mỗi lần trả về 1 giá trị)
// trong dart: hỗ trợ cả đồng bộ và không đồng bộ
// ví dụ về synchronous Generators(đồng bộ):
Iterable<int> count(int n) sync* {
  for (var i = 0; i < n; i++) {
    yield i;
  }
}

void printValue() {
  var iterable = count(5);
  for (var value in iterable) {
    print(value);
  }
}

// ví dụ về asynchronous generator
Stream<int> countAsync(int n) async* {
  for (var i = 0; i <= n; i++) {
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}

void printStream() {
  // sử dụng gennertor để tạo 1 stream
  var stream = countAsync(10);
  // lắng nghe
  stream.listen((event) {
    print(event);
  });
}
// một ví dụ khác nâng cao hơn về Stream để tải 1 API bất đồng bộ và xử lý

// tạo 1 class để biểu diễn một mục trong danh sách
class Item {
  final int id;
  final String name;
  Item(this.id, this.name);
  @override
  String toString() {
    return 'Item{id: $id, name:$name}';
  }
}

// class quản lý việc tải danh sách từ một api
class ItemLoader {
  static Future<List<Item>> fetchItem() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      // chuyển đổi dữ liệu Json bằng danh sách các mục
      List<dynamic> jsonData = json.decode(response.body);
      List<Item> items =
          jsonData.map((json) => Item(json['id'], json['title'])).toList();
      return items;
    } else {
      throw Exception('failed to load item');
    }
  }
}

void printItems() {
  // tạo ra một SteamCotroller để phát hiện ra mục khi chúng đc tải xuống
  final controller = StreamController<List<Item>>();
  // tải danh sách các mục từ API khi có yêu cầu
  Future<void> loadItem() async {
    try {
      final items = await ItemLoader.fetchItem();
      controller.add(items);
      controller.close();
    } catch (e) {
      controller.addError(e);
    }
  }

  // bắt đầu quá trình tải dữ liệu
  loadItem();
  // lắng nghe dữ liệu từ stream và sử lý nó
  controller.stream.listen((items) {
    items.forEach((item) => print(item));
  }).onError;
  (error) {
    print('err: $error');
  };
}
