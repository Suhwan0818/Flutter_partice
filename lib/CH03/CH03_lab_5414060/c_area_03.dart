import 'dart:io';

void main(List<String> args) {
  double PI = 3.14159;
  String Name = "Suhwan";
  int StuId = 5414060;
  int answer;
  int MenuNumber = 0;
  print(
      "\nProgram to calculate areas of \n     1 –- square \n     2 -- rectangle \n     3 -- circle \n     4 -- right triangle \n     5 -- quit");
  while (1 > MenuNumber || MenuNumber > 5) {
    stdout.write("Choose a valid menu: ");
    MenuNumber = int.parse(stdin.readLineSync()!);
  }
  switch (MenuNumber) {
    case 1:
      stdout.write("Square Diameter : ");
      answer = int.parse(stdin.readLineSync()!);
      print("Answer is ${answer * answer}");
      break;
    case 2:
      stdout.write("Rectangle row Diameter : ");
      int rowRadius = int.parse(stdin.readLineSync()!);
      stdout.write("Rectangle column Diameter : ");
      int columnRadius = int.parse(stdin.readLineSync()!);
      print("Answer is ${rowRadius * columnRadius}");
      break;
    case 3:
      stdout.write("Circle Radius : ");
      int Radius = int.parse(stdin.readLineSync()!);
      double answer = Radius * Radius * PI;
      print("Answer is ${answer}");
      break;
    case 4:
      stdout.write("Triangle row Diameter : ");
      int rowRadius = int.parse(stdin.readLineSync()!);
      stdout.write("Triangle column Diameter : ");
      int columnRadius = int.parse(stdin.readLineSync()!);
      print("Answer is ${rowRadius * columnRadius / 2}");
      break;
    case 5:
      break;
    default:
      print("Please input the correct number that you can input");
  }
}
