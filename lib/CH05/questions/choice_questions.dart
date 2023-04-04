import './questions.dart';

class ChoiceQuestions extends Questions {
  Set<String> choices = {};
  void addChoice(String choice, bool correct) {
    choices.add(choice);

    if (correct) {
      int ansNum = choices.length;
      setQuestionAns(ansNum.toString());
    }
  }

  @override
  void display() {
    super.display();
    for (int i = 0; i < choices.length; i++) {
      print("${i + 1}. ${choices.elementAt(i)}");
    }
  }
}
