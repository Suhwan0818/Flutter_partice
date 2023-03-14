void main() {
  List<String> Season = ["JANUARY", "FEBRUARY", "APRIL", "MAY", "JUNE"];
  print("CREATE A LIST THAT CONTAIN 5 MONTHS: \n${Season}");

  Season.add("JULY");
  print("\nADD JULY TO THE LIST: \n${Season}");

  Season.insert(2, "MARCH");
  print("\nINSERT MARCH AFTER FEBRUARY THEN DISPLAY THE LIST: \n${Season}");

  Season.addAll(["NOVEMBER", "DECEMBER"]);
  print("\nADD NOVEMBER AND DECEMBER THEN DISPLAY THE LIST: \n${Season}");

  Season.insertAll(7, ["AUGUST", "SEPTEMBER", "OCTOBER"]);
  print(
      "I\nNSERT AUGUST, SEPTEMBER, AND OCTOBER AFTER JULY THEN DISPLAY THE LIST: \n${Season}");
}
