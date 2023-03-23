double f_Of_XY([int x = 0, int y = 1]) {
  double z = (x * x) + (x / y);
  return z;
}

void f_reader([int x = 0, int y = 1]) {
  double z = (x * x) + (x / y);
  print("Using the reader $x, $y result is $z");
}

void main(List<String> args) {
  double result1;
  result1 = f_Of_XY(3, 4);

  print("f of 3, 4 is : $result1");
  print("f of 5, 7 is : ${f_Of_XY(5, 7)}");
  f_reader(7, 8);
}
