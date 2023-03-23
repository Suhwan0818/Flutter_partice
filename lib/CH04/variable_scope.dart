String global = "I am global";
void main() {
  void localFunction() {
    String local = "I am local";

    print("From localFunction(): $global");

    print("From localFunction(): $local");
  }

  print("From main(): $global");

  localFunction();
}
