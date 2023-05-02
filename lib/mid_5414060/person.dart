class Person {
  String? name;
  int? yearOfBirth;

  Person(this.name, this.yearOfBirth);

  void printHello() {
    print("This person's name is $name \n$name birth year is $yearOfBirth");
  }
}

class Student extends Person {
  String? major;
  Student(String name, int yearOfBirth, this.major) : super(name, yearOfBirth);
  void printMajor() {
    print('$name major is $major');
  }
}

class Instructor extends Person {
  double? salary;

  Instructor(String name, int yearOfBirth, this.salary)
      : super(name, yearOfBirth);

  void printSalary() {
    print('$name salary is $salary');
  }
}
