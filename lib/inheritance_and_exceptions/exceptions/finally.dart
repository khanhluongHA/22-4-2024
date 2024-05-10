void closeDatabaseConnection() {
  print('kết nối dữ liệu đã được đóng');
}

void performDatabaseOperations() {
  throw 'Lỗi trong quá trình thực thi cơ sở dữ liệu';
}

void openDatabaseConnection() {
  print('đã mở được cơ sở dữ liệu');
}

void runData() {
  print('mở kết nối csdl');
  openDatabaseConnection();
  try {
    performDatabaseOperations();
  } catch (e) {
    print('lỗi đã sảy ra: $e');
  } finally {
    // đảm bảo kết nối sẽ được đóng sau khi thực thi xong
    print('đóng kết nối csdl');
    closeDatabaseConnection();
  }
}
// tóm lại: finally là đóng chương trình khi trương trình chạy xong 
// và đảm bảo dữ liệu sẽ được  giải phóng chính xác
