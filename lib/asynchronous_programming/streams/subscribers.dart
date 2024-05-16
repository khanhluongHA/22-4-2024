import 'dart:async';

//Subscribers là các thành phần của một hệ thống
// khi mà có thông báo hay có sự tha đổi sảy ra
// thì người dùng sẽ nhận được hệ thống đó
// cách triển khai Subscribers là sử dụng mô hình stream
// ví dụ
void sub() {
  // tạo streamController để tạo và quản lý một stream
  StreamController<int> controller = StreamController<int>();
  // đăng kí một sub cho stream
  StreamSubscription<int> subscription = controller.stream.listen((int data) {
    print('data received: $data');
  });
  // thêm dữ liệu vào stream
  controller.add(1);
  controller.add(2);
  controller.add(3);
}
