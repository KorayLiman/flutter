abstract class Shape {
  int CalculateArea();

  void Func() {
    print("qwe");
  }
}

class Rectangle extends Shape {
  @override
  int CalculateArea() {
    // TODO: implement CalculateArea
    throw UnimplementedError();
  }
}
