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

class Anims {}

abstract class Fliables {
  void fly();
}

abstract class Runnables {
  void Run();
}

abstract class Barkables {
  void Bark();
}

class Dog extends Anims implements Barkables, Runnables {
  @override
  void Bark() {
    // TODO: implement Bark
  }

  @override
  void Run() {
    // TODO: implement Run
  }
}

class Bird extends Anims implements Fliables {
  @override
  void fly() {
    // TODO: implement fly
  }
}

class StaticVarsandMeths {
  static int st = 5;

  static int Add(int x, int y) => x + y;
}
