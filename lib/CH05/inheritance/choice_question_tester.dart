import 'dart:io';
import '../questions/choice_questions.dart';

void main() {
  ChoiceQuestions cq = ChoiceQuestions();

  cq.setQuestionText("In what year was the birthyear of Sean");
  cq.addChoice("1997", true);
  cq.addChoice("2000", false);
  cq.addChoice("2002", false);
  cq.addChoice("2023", false);

  cq.display();
  stdout.write("Your answer is : ");
  String response = stdin.readLineSync()!;
  print(cq.checkAnswer(response.toUpperCase()));
}
