class bank_account {
  String? name;
  int? totalMoney, nowInputMoney;

  bank_account() {
    name = "";
    totalMoney = 0;
    nowInputMoney = 0;
  }

  setAccount(String accountType) => name = accountType;

  setMoneyAmount(int nowMoneyAmount) => totalMoney = nowMoneyAmount;

  setMoneyInputAmount(int nowInputMoneyAmount) => {
        totalMoney = (totalMoney! + nowInputMoneyAmount),
        nowInputMoney = nowInputMoneyAmount
      };

  setMoneyMinusAmount(int nowMinusMoney) => {
        totalMoney = (totalMoney! - nowMinusMoney),
        nowInputMoney = nowMinusMoney
      };
  displayTotal() => print('Now your account have $totalMoney dallor');
  displayInput() => print('Now you put in the $nowInputMoney dallor');
}
