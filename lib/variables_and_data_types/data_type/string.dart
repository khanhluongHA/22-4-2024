//  String
void mySelf() {
  var age = 10;
  var myAge = "i am $age year old";
  print(myAge);
}

//"${...}"chèn giá trị của biểu thức vào trong chuỗi
void test() {
  var myTest = "${"hahhahaha".toString()}";
  print(myTest);
}

// toán tử []
void myName() {
  String name = "Long";
  print(name[0]);
  print(name[1]);
  print(name[2]);
  print(name[0] + name[1] + name[2] + name[3]);
  // nối chuỗi
  var yearOld = "my name is" +
      " " +
      name +
      " " +
      "i am" +
      " " +
      (23).toString() +
      " " +
      "year old";
  print(yearOld);
}

// for
void loop() {
  // var value = "";
  var sum = 0;
  for (var i = 0; i < 10; i++) {
    sum += i;
    print(sum);
  }
}

void buff() {
  var buffe =
      StringBuffer(); // StringBuffer cho phép nối chuỗi hiệu quả hơn mà không phải sử dụng toán tử +
  for (var i = 0; i < 5; i++) {
    buffe.write("$i "); //write để gán các chuỗi i vào trong buffe
  }
  var value = buffe.toString();
  print(value);
}

/// Enumerated types

// enum keyword
enum Fruits { apple, orange, pear, banana }

void enums() {
  Fruits like = Fruits.apple;
  // Fruits.orange;
  Fruits dislike = Fruits.pear;
  // Fruits.banana;
  print(like.toString());
  print(dislike.toString());
}
// enum theo index

enum Colors { orange, red, blue, grey }

void listed() {
  // var a = Colors.orange.index;
  var b = Colors.blue.index;
  // var c = Colors.grey.index;
  print(b);
}

/// good practices
/// kiểm tra giá trị chuỗi
enum Chess { King, Queen, Rook, Knight }

bool diagonalMoveC(Chess item) {
  if (item == Chess.King) {
    return false;
  } else if (item == Chess.Queen) {
    return true;
  } else if (item == Chess.Rook) {
    return true;
  } else {
    return false;
  }
}

// kiểm tra giá trị số
bool diagonalMoveS(int item) {
  if (item == 0) {
    return false;
  } else if (item == 1) {
    return true;
  } else if (item == 2) {
    return true;
  } else {
    return false;
  }
}

void checking() {
  print(diagonalMoveS(2));
}

void check() {
  print(diagonalMoveC(Chess.King));
  print(diagonalMoveC(Chess.Queen));
  print(diagonalMoveC(Chess.Rook));
  print(diagonalMoveC(Chess.Rook));
}

//Booleans là một kiểu dữ liệu trả về chỉ có true hoặc false

