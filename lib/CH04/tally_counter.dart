class TallyCounter {
  var totalCount = 0;
  click() {
    totalCount += 1;
  }

  getTotal() {
    return totalCount;
  }

  reset() {
    totalCount = 0;
  }
}

void main() {
  var concertCounter = TallyCounter();
  TallyCounter queueCounter;

  concertCounter.click();
  concertCounter.click();
  concertCounter.click();
  print("People in concert are: ${concertCounter.getTotal()}");

  queueCounter = TallyCounter();

  queueCounter.click();
  queueCounter.click();
  queueCounter.click();
  queueCounter.click();
  queueCounter.click();
  print("People waiting queue are: ${queueCounter.getTotal()}");

  var num = concertCounter.getTotal() + queueCounter.getTotal();
  print("Total number expected people: $num");
}
