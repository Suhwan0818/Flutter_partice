import 'dart:io';
import 'dart:math';

double PI = 3.14159;
String Name = "Suhwan";
int StuId = 5414060;

void main(List<String> args) {
  int answer;
  int MenuNumber = 0;
  void printAuthor() {
    print("Author name : $Name");
    print("PI number is : $PI");
    print("Student Id is : $StuId");
  }

  int displayMenu() {
    print(
        "\nProgram to calculate areas of \n     1 –- square \n     2 -- rectangle \n     3 -- circle \n     4 -- right triangle \n     5 -- quit");
    stdout.write("Choose a valid menu: ");
    MenuNumber = int.parse(stdin.readLineSync()!);
    return MenuNumber;
  }

  void circleArea(double data) {
    double answer = data * data * PI;
    print("Answer is ${answer}");
  }

  void rightTriangleArea(double width, double height) {
    print("Answer is ${width * height / 2}");
  }

  printAuthor();
  while (1 > MenuNumber || MenuNumber > 5) {
    displayMenu();
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
      double Radius = double.parse(stdin.readLineSync()!);
      circleArea(Radius);
      break;
    case 4:
      stdout.write("Triangle row Diameter : ");
      double rowRadius = double.parse(stdin.readLineSync()!);
      stdout.write("Triangle column Diameter : ");
      double columnRadius = double.parse(stdin.readLineSync()!);
      rightTriangleArea(rowRadius, columnRadius);
      break;
    case 5:
      break;
    default:
      print("Please input the correct number that you can input");
  }
}
