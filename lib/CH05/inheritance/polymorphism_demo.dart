import 'dart:io';
import 'package:fl_5414060/CH05/questions/questions_tester.dart';
import '../questions/choice_questions.dart';
import 'package:fl_5414060/CH05/questions/questions.dart';

void main(List<String> args) {
  Questions q = Questions();
  ChoiceQuestions cq = ChoiceQuestions();

  print("-> Question number 1");
  q.setQuestionText("Who is the inventor of Dart?");
  q.setQuestionAns("Lars Bak".toUpperCase());
  presentQuestion(q);

  print("");
  print("-> Question number 2");
  cq.setQuestionText("In what year was the Dart introduced?");
  cq.addChoice("2015", false);
  cq.addChoice("2008", false);
  cq.addChoice("2012", true);
  cq.addChoice("2020", false);

  presentQuestion(cq);
}
