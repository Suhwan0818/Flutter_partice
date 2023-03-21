import 'dart:io';

void main(List<String> args) {
  List<List<int>> A = [
        [2, 4, 6],
        [1, 1, 1],
        [4, 6, 8]
      ],
      B = [
        [6, 4, 2],
        [7, 7, 7],
        [4, 2, 0]
      ];
  int sum;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      sum = A[i][j] + B[i][j];
      stdout.write(" $sum");
    }
    print("");
  }
}
