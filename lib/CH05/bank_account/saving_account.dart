import 'package:fl_5414060/CH05/bank_account/bank_account.dart';

class saving_account extends bank_account {
  double? savingAccountMoney;
  double? interestMoney;
  saving_account() {
    savingAccountMoney = 0;
    interestMoney = 0;
  }
  @override
  void setMoneyInputAmount(int nowInputMoneyAmount) {
    savingAccountMoney = savingAccountMoney! + nowInputMoneyAmount;
    return super.setMoneyInputAmount(nowInputMoneyAmount);
  }

  @override
  setMoneyMinusAmount(int nowMinusMoney) {
    return print("You can't withdraw from saving account");
  }

  @override
  displayTotal() {
    return print('Now your balance is $savingAccountMoney');
  }

  @override
  void setMonthLater() {
    // TODO: implement setMonthLater
    interestMoney = savingAccountMoney! * 0.1;
    savingAccountMoney = savingAccountMoney! + interestMoney!;
    print(
        "You take interest $interestMoney \nYour balance is $savingAccountMoney");
  }

  @override
  displayInput() {
    // TODO: implement displayInput
    return super.displayInput();
  }
}
