class Product implements Comparable<Product> {
  String name;
  double price;
  Product(this.name, this.price);
  @override
  int compareTo(Product other) {
    // so sánh theo giá
    return this.price.compareTo(other.price);
  }
}

void compares() {
  var product = [
    Product('laptop', 300),
    Product('smartphone', 100),
    Product('AppleW', 200),
    Product('Computer', 1000),
  ];
  // sắp xếp các mảng sản phẩm theo giá
  product.sort();
  print('Danh sách sản phẩm theo giá: ');
  for (var products in product) {
    print('${products.name}: ${products.price}');
  }
}

// ví dụ khác(so sánh các nhân viên dựa trên mức lương)

class Employee implements Comparable<Employee> {
  String name;
  double salary;

  Employee(this.name, this.salary);

  @override
  int compareTo(Employee other) {
    // So sánh các nhân viên dựa trên mức lương
    return other.salary.compareTo(this.salary);
  }

  @override
  String toString() {
    return '$name: \$${salary.toStringAsFixed(2)}';
  }
}

void printEmployee() {
  var employees = [
    Employee('Alice', 30),
    Employee('Bob', 10),
    Employee('charlie', 34),
  ];
  employees.sort();
  print('Danh sách nhân viên mức lương giảm dần là: ');
  employees.forEach(print);
}
