import 'package:fl_5414060/CH05/bank_account/bank_account.dart';

class checking_acocunt extends bank_account {
  double? checkingAccountMoney;
  int? withdrawLimit;
  checking_acocunt() {
    checkingAccountMoney = 0;
    withdrawLimit = 3;
  }
  @override
  void setMoneyInputAmount(int nowInputMoneyAmount) {
    checkingAccountMoney = checkingAccountMoney! + nowInputMoneyAmount;
    return super.setMoneyInputAmount(nowInputMoneyAmount);
  }

  @override
  void setMoneyMinusAmount(int nowMinusMoney) => {
        checkingAccountMoney = checkingAccountMoney! - nowMinusMoney,
        if (withdrawLimit! > 0)
          {
            withdrawLimit = withdrawLimit! - 1,
            print(
                "Your account have $checkingAccountMoney dollar \nYou left $withdrawLimit times free withdraw"),
          }
        else
          {
            checkingAccountMoney = checkingAccountMoney! - 1,
            print(
                "Your free withdraw is over The balance after the 1 dollar fee is $checkingAccountMoney")
          }
      };
  @override
  displayTotal() {
    return print('Now your balance is $checkingAccountMoney');
  }

  @override
  void setMonthLater() {
    withdrawLimit = 3;
    print(
        "Checking account doesn't have interest\nYour balance is $checkingAccountMoney\nYour free withdrawal has been charged");
  }

  @override
  displayInput() {
    // TODO: implement displayInput
    return super.displayInput();
  }
}
