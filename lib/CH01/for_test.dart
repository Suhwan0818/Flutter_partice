import 'dart:io';

void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 5; j++) {
      if ((i + j) % 2 == 0) {
        stdout.write("*");
      } else {
        stdout.write("_");
      }
    }
    stdout.write("\n");
  }
}
