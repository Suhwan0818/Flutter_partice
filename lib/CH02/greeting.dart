import 'dart:io';

void main(List<String> args) {
  String? name = '';

  print("Enter your name: ");
  name = stdin.readLineSync();

  print("Hello, $name");
}
