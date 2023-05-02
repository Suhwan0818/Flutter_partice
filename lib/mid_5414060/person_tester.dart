import 'person.dart';

void main() {
  var person_1 = Person("Suhwan", 1997);
  var student_1 = Student("Doyun", 1997, 'electronic engineering');
  var instructor_1 =
      Instructor("Yalew, Zelalem Jembre", 1999, 10000000000000000);

  print("\n ===Person case===\n");
  person_1.printHello();
  print("\n ===Student case===\n");
  student_1.printHello();
  student_1.printMajor();
  print("\n ===Instructor case===\n");
  instructor_1.printHello();
  instructor_1.printSalary();
}
