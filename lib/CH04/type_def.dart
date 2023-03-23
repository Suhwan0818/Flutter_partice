typedef String Join(String fName, String lName);

String dot(String first, String second) => '$first.$second';
String snake_case(String first, String second) => '${first}_$second';

void main() {
  String fisrtName = "John", secondName = "Smith";
  Join joinName = dot;

  print(joinName(fisrtName, secondName));

  joinName = snake_case;

  print(joinName(fisrtName, secondName));
}
