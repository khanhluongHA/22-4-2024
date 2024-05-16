// Using a controller được đề cập đến khi bạn điều khiển một tập hợp dữ liệu
// thường là để hiển thị hoặc tương tác với người dùng
// cách phổ biến để dùng Using a controller là thông qua mô hình MVC
// ví dụ cụ thể
import 'dart:async';

class Item {
  String name;
  Item(this.name);
}

class ItemController {
  final List<Item> _item = [];
  final StreamController<List<Item>> _itemStreamController =
      StreamController<List<Item>>();
  Stream<List<Item>> get itemStream => _itemStreamController.stream;
  void addItem(String name) {
    _item.add(Item(name));
    _itemStreamController.add(_item);
  }

  void removeItem(int index) {
    _item.removeAt(index);
    _itemStreamController.add(_item);
  }
}

void printItemAndRemoveItem() {
  ItemController controller = ItemController();
  // đăng kí một listener để lắng nghe sự thay đổi trong các danh mục
  controller.itemStream.listen((List<Item> items) {
    print('danh sách các thư mục item: $items');
  });
  controller.addItem('item1');
  controller.addItem('item2');
  controller.addItem('item3');
  controller.removeItem(1);
}
