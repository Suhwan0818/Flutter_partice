import 'dart:io';

int factorial(int number) {
  if (number > 1)
    return number * factorial(number - 1);
  else
    return 1;
}

void main() {
  int num;
  stdout.write("Enter the number: ");
  num = int.parse(stdin.readLineSync()!);
  print("Factorial of $num is ${factorial(5)}");
}
