// các phương thức quan trọng của future gồm
// - then: thực hiện một hành động sau khi future thành công
// nó sẽ nhận về 2 tham số, một tham số sử lý dữ liệu, một hàm sử lý lỗi tùy chọn
// - catchError: hàm này sử dụng khi future thất bại
// - whenComplete: hàm này dùng để hành động khi future hoàn thành kể cả có lỗi

// ví dụ
import 'dart:async'; // thư viện này để dùng future (lập trình không đồng bộ)
import 'dart:math';

Future<String> fetchData() {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Dữ liệu được tải thành công';
  });
}

void downloadData() {
  print('Bắt đầu tải dữ liệu....');
  fetchData().then((value) {
    print('Kết quả: ($value)');
  }).catchError((error) {
    print('Lỗi ($error)');
  }).whenComplete(() {
    print('tải hoàn thành dữ liệu');
  });
  print('thực hiện các tác vụ khác');
}

// ví dụ khác: đọc dữ liệu từ một tệp văn bản
Future<String> readFile() {
  return Future.delayed(const Duration(seconds: 3), () {
    return 'Nội dung của tệp: hello word';
  });
}

void dataFile() {
  print('Bắt đầu đọc tệp');
  readFile().then((content) {
    print('Nội dung đã được đọc: $content');
  }).catchError((error) {
    print('lỗi khi đọc tệp: $error');
  }).whenComplete(() {
    print('Hoàn thành đọc tệp');
  });
  // print('Tiếp tục thực hiện');
}

// ví dụ khác: Hàm giả lập tải dữ liệu về 1 url cụ thể
Future<String> fetchDataFromUrl(String url) {
  return Future.delayed(Duration(seconds: Random().nextInt(3)), () {
    // tải dữ liệu trong 1 khoảng thời gian từ 0-3 giây
    // Trong thực tế, bạn sẽ gọi API hoặc tải dữ liệu từ 1 URL ở đây
    return 'dữ liệu từ URL: $url';
  });
}

void dataUrl() {
  print('Bắt đầu tải dữ liệu từ: URL...');
  final urls = [
    'url1',
    'url2',
    'url3',
    'url4',
    'url5'
  ]; // danh sách url cần tải
  // tạo danh sách Future từ các URL
  final List<Future<String>> futures = [];
  for (var url in urls) {
    futures.add(fetchDataFromUrl(url));
  }
  // dùng future.wait để chờ tất cả future hoàn thành
  Future.wait(futures).then((List<String> results) {
    print('Tất cả các URL được tải thành công: ');
    results.forEach((result) {
      print(result);
    });
  }).catchError((error) {
    print('đã sảy ra lỗi khi tải dữ liệu: $error');
  }).whenComplete(() {
    print('Hoàn thành tải dữ liệu từ các URl');
  });
  print('tiếp tục thực hiện các công việc khác');
}

// ví dụ về tải ảnh
Future<String> loadImg(String url) {
  return Future.delayed(Duration(seconds: Random().nextInt(3) + 1), () {
    return 'Hình ảnh URl: $url';
  });
}

void downloadImg() {
  final imgs = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg'
  ];
  // tạo danh sách Future từ các imgs
  final List<Future<String>> images = [];
  for (var img in imgs) {
    images.add(loadImg(img));
  }
  Future.wait(images).then((List<String> allPhotos) {
    print('các hình ảnh đang tải: ');
    allPhotos.forEach((allPhoto) {
      print(allPhoto);
    });
  }).catchError((error) {
    print('lỗi đã sảy ra khi tải hình ảnh: $error');
  }).whenComplete(() {
    print('Hoàn thành tải hình ảnh');
  });
}
