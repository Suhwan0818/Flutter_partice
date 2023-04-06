class Point {
  double first_point = 0, second_point = 0;

  Point(double pointA, double pointB) {
    this.first_point = pointA;
    this.second_point = pointB;
  }

  void display() {
    print("\nfirst point is $first_point \nsecond point is $second_point");
  }

  void move(double point_1, double point_2) {
    this.first_point = point_1;
    this.second_point = point_2;
  }
}

void main(List<String> args) {
  var pt = Point(2, 6.5);
  pt.display();
  pt.move(-2, 3.25);
  pt.display();
}
