// 1.1 variables and data types
// 1.1.1 variables

// create variable basic

var value = 18;
var myName = "Luong";
// correct variable
int yearOld = 18;
String fistLastName = "Khanh Luong";
// undefine variable

dynamic product = "Truyện tranh";
dynamic productPrice = 100000;

// note: Name a variable letter lowercase and letter uppercase

// 1.1.2: Initialization

// bad: generics

class Toppings {
  String name;
  Toppings(this.name);
}

void main() {
  List<List<Toppings>> pizza = [
    [Toppings('ớt'), Toppings('xúc xích'), Toppings('thịt')],
    [Toppings('ô liu'), Toppings('bột mì')]
  ];
  for (List<Toppings> topping in pizza) {
    for (var e in topping) {
      print(e.name);
    }
  }
}

// good
void mains() {
  List<List<Cores>> bread = [
    [Cores('xúc xích'), Cores('dưa chuột'), Cores('trứng')],
    [Cores('thịt nướng'), Cores('pate')],
  ];
  for (List<Cores> Core in bread) {
    eat(Core);
  }
}

void eat(List<Cores> Core) {
  for (Cores c in Core) {
    print(c.names);
  }
}

class Cores {
  String names;
  Cores(this.names);
}

// other

class Friends {
  List<String> getNames() {
    return ['Vinh', 'Hiếu', 'sơn'];
  }
}

class Haters {
  List<String> getNames() {
    return ['hải', 'an', 'Cường'];
  }
}

bool iWantFriends() {
  return true;
}

void mainn() {
  late List<String> names;
  Friends friends = Friends();
  Haters haters = Haters();
  if (iWantFriends()) {
    names = friends.getNames();
  } else {
    names = haters.getNames();
  }
  print(names);
}

String getPeople(bool isTrue, int count) {
  if (isTrue) {
    return 'hiếu, sơn, vinh';
  } else {
    return 'lan, huệ, vũ';
  }
}

void pp() {
  String people = getPeople(true, 100);
  print(people);
}
