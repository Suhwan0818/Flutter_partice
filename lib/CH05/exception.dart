class TooOldForServiceException implements Exception {
  String _name;
  TooOldForServiceException(this._name);
  @override
  String toString() {
    return "$_name is too old for military service.";
  }
}

void main(List<String> args) {
  print("start");
  Map<String, int> enlisted = {
    "Tom": 21,
    "Dick": 37,
    "Harry": 51,
    "Mark": 52,
  };
  Map<String, int> qualified = {};

  enlisted.forEach((name, age) {
    try {
      age < 50 ? throw TooOldForServiceException(name) : "";
      qualified[name] = age;
    } catch (e) {
      print(e);
    }
  });

  print(
      'finish: \n${enlisted.length} of ${qualified.length} candidates are valid.');
  print("List of qualified: $qualified");
}
