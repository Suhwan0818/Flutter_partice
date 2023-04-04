import 'dart:io';
import 'questions.dart';

void main() {
  Questions q = Questions();

  q.setQuestionText("Who is the inventor of Dart? ");
  q.setQuestionAns("Lars Bak".toUpperCase());
  presentQuestion(q);
}

void presentQuestion(Questions questions) {
  questions.display();
  stdout.write('Your answer is: ');
  String response = stdin.readLineSync()!;
  print(questions.checkAnswer(response.toUpperCase()));
}
