class bank_account {
  String? name;
  int? totalMoney, nowInputMoney;

  bank_account() {
    name = "";
    totalMoney = 0;
    nowInputMoney = 0;
  }

  void setMoneyInputAmount(int nowInputMoneyAmount) => {
        totalMoney = (totalMoney! + nowInputMoneyAmount),
        nowInputMoney = nowInputMoneyAmount
      };

  void setMoneyMinusAmount(int nowMinusMoney) => {
        totalMoney = (totalMoney! - nowMinusMoney),
        nowInputMoney = nowMinusMoney
      };

  void setMonthLater() => {};
  void displayTotal() => print('Now your account have $totalMoney dallor');
  void displayInput() => print('Now you put in the $nowInputMoney dallor');
}
