import 'package:fl_5414060/CH05/bank_account/bank_account.dart';

class saving_account extends bank_account {
  int savingAccountMoney = 0;
  @override
  setMoneyAmount(int nowMoneyAmount) => super.setMoneyAmount(nowMoneyAmount);
  @override
  setMoneyInputAmount(int nowInputMoneyAmount) {
    return super.setMoneyInputAmount(nowInputMoneyAmount);
  }

  @override
  setMoneyMinusAmount(int nowMinusMoney) {
    return print("You can't withdraw from saving account");
  }

  @override
  displayTotal() {
    return print('Now you account have $savingAccountMoney');
  }

  @override
  displayInput() {
    // TODO: implement displayInput
    return super.displayInput();
  }
}
