class CashRegister {
  var totalPrice, itemCount;
  CashRegister(var total, var count) {
    this.totalPrice = total;
    this.itemCount = count;
  }
  getTotal() {
    return totalPrice;
  }

  getCount() {
    return itemCount;
  }

  addItem(double price) {
    totalPrice += price;
    itemCount += 1;
  }

  clear() {
    totalPrice = 0;
    itemCount = 0;
  }
}

void main() {
  CashRegister register1 = new CashRegister(0.0, 0);

  register1.addItem(1.95);
  register1.addItem(0.95);
  register1.addItem(2.50);

  print(register1.getCount());
  print("Expected is : 3");
  print(register1.getTotal());
  print("Expected is : 5.40");

  register1.clear();
}
