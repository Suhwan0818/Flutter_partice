import 'dart:io';
import 'dart:math';

void main() {
  int num;
  Random random = Random();
  int rand;
  String quit = "P";

  while (quit != 'Q') {
    do {
      stdout.write("Enter number between 1 and 10: ");
      num = int.parse(stdin.readLineSync()!);
      rand = random.nextInt(10) + 1;

      if (num == rand) {
        print("I win, I guessed your number");
      } else if (num >= 1 && num <= 10) {
        print("You win, I did not guess your number");
      } else
        break;

      print("Your number is-> $num");
      print("My number is-> $rand");
    } while (num < 1 || num > 10);
    stdout.write("Do you want to play again? Press q to quit: ");
    quit = stdin.readLineSync()!.toUpperCase();
  }
}
