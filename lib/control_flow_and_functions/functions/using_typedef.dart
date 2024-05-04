//Using typedefs
// định nghĩa
import 'package:flutter/material.dart';

typedef StringTransformer = String Function(String);
// Nó là một kiểu hàm nhận một đối số kiểu String và trả về một giá trị kiểu String.
// cách sử dụng
String capitalize(String input) {
  return input.toUpperCase();
}

String manipulateString(String input, StringTransformer transformer) {
  return transformer(input);
}

void typedef() {
  String originalString = 'hello';
  print('Original String: $originalString');

  String capitalizeString = manipulateString(originalString, capitalize);
  print('Capitalized String:  $capitalizeString');
}

// thực hành
class Book {
  final String title;
  final String author;
  final int pages;

  Book(this.title, this.author, this.pages);
}

typedef bool BookFilter(Book book);

// List<Book> filterBook(List<Book> book, BookFilter filter) {}
// void filters() {
//   List<Book> books = [
//     Book('Dart Programming', 'John Smith', 300),
//     Book('Flutter Development', 'Alice Johnson', 250),
//     Book('Effective Dart', 'Bob Brown', 200),
//   ];
//   List<Book> filterBook = filterBook(books, (Book book))
// }

typedef LoggerFunction = void Function(String msg);

class MyWidget extends StatefulWidget {
  final LoggerFunction callback;
  const MyWidget({super.key,required this.callback});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}