import 'dart:io';

import 'package:fl_5414060/CH05/bank_account/bank_account.dart';
import 'package:fl_5414060/CH05/bank_account/checking_account.dart';
import 'package:fl_5414060/CH05/bank_account/saving_account.dart';

void main(List<String> args) {
  String answer = "";
  int checkingLimit = 3;
  bank_account b = bank_account();

  while (answer.toUpperCase() != "Q") {
    print("\nD)eposit \nW)ithdraw \nM)onth \nQ)uit");
    answer = stdin.readLineSync()!;
    switch (answer.toUpperCase()) {
      case "D":
        print(
            "Which account will you choose? \n1)Saving account \n2)Checking account");
        int accountChoose = int.parse(stdin.readLineSync()!);
        stdout.write("How much will you deposit? : ");
        int inputAmount = int.parse(stdin.readLineSync()!);
        if (accountChoose == 1) {
          saving_account s = saving_account();
          print("You choose saving account type");
          s.setMoneyInputAmount(inputAmount);
          s.displayInput();
          s.displayTotal();
        } else if (accountChoose == 2) {
          checking_acocunt c = checking_acocunt();
          print("You choose checking account type");
          c.setMoneyInputAmount(inputAmount);
          c.displayInput();
          c.displayTotal();
        } else {
          return print("Choose right account please");
        }
        break;
      case "W":
        print(
            "Which account will you choose? \n1)Saving account \n2)Checking account");
        int accountChoose = int.parse(stdin.readLineSync()!);
        print("How much will you withdraw? ");
        int inputAmount = int.parse(stdin.readLineSync()!);
        if (accountChoose == 1) {
          saving_account s = saving_account();
          print("You choose saving account type");
          s.setMoneyMinusAmount(inputAmount);
          s.displayInput();
          s.displayTotal();
        } else if (accountChoose == 2) {
          checking_acocunt c = checking_acocunt();
          print("You choose checking account type");
          c.setMoneyMinusAmount(inputAmount);
          c.displayInput();
          c.displayTotal();
        } else {
          return print("Choose right account please");
        }
        break;
      case "M":
        print("Month case");
        break;
      case "Q":
        break;
    }
  }
}
