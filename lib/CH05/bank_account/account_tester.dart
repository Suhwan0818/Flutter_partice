import 'dart:io';

import 'package:fl_5414060/CH05/bank_account/bank_account.dart';
import 'package:fl_5414060/CH05/bank_account/checking_account.dart';
import 'package:fl_5414060/CH05/bank_account/saving_account.dart';

void main(List<String> args) {
  String answer = "";
  saving_account s = saving_account();
  checking_acocunt c = checking_acocunt();

  while (answer.toUpperCase() != "Q") {
    print("\nD)eposit \nW)ithdraw \nM)onth \nQ)uit");
    answer = stdin.readLineSync()!;
    switch (answer.toUpperCase()) {
      case "D":
        print(
            "\nWhich account will you choose? \n1)Saving account \n2)Checking account");
        int accountChoose = int.parse(stdin.readLineSync()!);
        stdout.write("\nHow much will you deposit? : ");
        int inputAmount = int.parse(stdin.readLineSync()!);
        if (accountChoose == 1) {
          print("\nYou choose saving account type");
          s.setMoneyInputAmount(inputAmount);
          s.displayInput();
          s.displayTotal();
        } else if (accountChoose == 2) {
          print("\nYou choose checking account type");
          c.setMoneyInputAmount(inputAmount);
          c.displayInput();
          c.displayTotal();
        } else {
          return print("\nChoose right account please");
        }
        break;
      case "W":
        print(
            "\nWhich account will you choose? \n1)Saving account \n2)Checking account");
        int accountChoose = int.parse(stdin.readLineSync()!);
        print("\nHow much will you withdraw? ");
        int inputAmount = int.parse(stdin.readLineSync()!);
        if (accountChoose == 1) {
          print("\nYou choose saving account type");
          s.setMoneyMinusAmount(inputAmount);
          s.displayTotal();
        } else if (accountChoose == 2) {
          print("\nYou choose checking account type");
          c.setMoneyMinusAmount(inputAmount);
          c.displayTotal();
        } else {
          return print("\nChoose right account please");
        }
        break;
      case "M":
        print("\nSaving Account ==============\n");
        s.setMonthLater();
        print("\nChecking Account ============\n");
        c.setMonthLater();
        print("\n=============================\n");
        break;
      case "Q":
        break;
    }
  }
}
