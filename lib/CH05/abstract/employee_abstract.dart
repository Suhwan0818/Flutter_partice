abstract class Employee {
  void getEmpInfo();
}

class Manager extends Employee {
  void getEmpInfo() {
    print("I am Manager");
  }
}

class Engineer extends Employee {
  void getEmpInfo() {
    print("I am Engineer");
  }
}
