import 'dart:io';

void main() {
  int n, total;
  double average;
  List<int> grades = [];

  stdout.write("How many courses are you talking? ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write('Grade of course ${i + 1} is : ');
    grades.add(int.parse(stdin.readLineSync()!));
  }

  total = grades.reduce((value, element) => value + element);
  average = total / n;
  print("The grades are $grades");
  print("The sum of the grades is: $total");
  print("The average of the grades is: $average");
}
