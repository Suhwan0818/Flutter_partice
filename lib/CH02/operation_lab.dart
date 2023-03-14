void main(List<String> args) {
  int num1 = 30;
  int num2 = 20;
  double num3;
  bool result;

  num2 += num1;
  print('\nNow num2 is -> $num2');

  num3 = num1 / num2;
  print('\nnum1 divided by num2 is -> $num3');

  result = (num1 >= num2);
  print("\nIs num1 greater than num2? $result");

  num1 = num1 << 2;
  print('\nNow num1 is -> $num1');
}
