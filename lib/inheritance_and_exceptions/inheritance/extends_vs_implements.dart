// 1. extends khi một lớp muốn kế thừa từ một lớp cha gọi là lớp con
// một lớp con có thể chỉ mở rộng từ một lớp cha duy nhất

// 2. sử dụng implement khi muốn triển khai các phương thức từ một hoặc nhiều dao diện
// một lớp có thể triển khai nhiều dao diện khác nhau

// ví dụ
// dao diện
abstract class Vehicle {
  void move();
}

// lớp cha
class Animal {
  void makeSound() {
    print('animal make is a sound');
  }
}

// lớp con kế thừa dao diện từ lớp cha và triển khai dao diện
class Dog extends Animal implements Vehicle {
  @override
  void move() {
    print('Dog move on foot');
  }

  void bark() {
    print('gâu gâu');
  }
}

void soundDog() {
  var dog = Dog();
  dog.makeSound();
  dog.move();
  dog.bark();
}
