import 'dart:io';

void main() {
  double pay;
  int hours;
  final rate = 5.0;
  stdout.write("How many hours did you work? -> ");
  hours = int.parse(stdin.readLineSync()!);

  pay = hours * rate;
  stdout.write("You have earned \$ $pay.");
}
