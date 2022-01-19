import 'dart:io';

import 'dart:math';

class GenericStack<T> {
  List<T> mylist = <T>[];
  void Push(T elem) {}
  T pop() {
    return mylist.removeLast();
  }
}

class Ex {
  Ex() {
    if (0 < 1) {
      throw AgeException(msg: "Test exception");
    }
  }
}

class Person {}

class Child extends Person {}

class AgeException implements Exception {
  String msg = "";
  AgeException({this.msg = "ex"});
  @override
  String toString() {
    // TODO: implement toString
    return "To string method";
  }
}

void main(List<String> args) {
  Function F1 = (int x, int y) {
    print(x + y);
  };

  F1(5, 6);

  var F2 = (int x) => x * 2;
  print(F2(8));

  List<int> intlist = [1, 2, 3];
  intlist.forEach((element) {
    print(element);
  });

  /* void CallBack(int element) {
    print(element);
  }*/

//  intlist.forEach(CallBack);

  void ManualForEach(List<int> list, Function CallBack) {
    for (int i = 0; i < list.length; i++) {
      CallBack(list[i]);
    }
  }

  ManualForEach(intlist, (int elem) {
    print("$elem  testtt");
  });

  Function Lex() {
    return (int val) => val * 2;
  }

  var L = Lex();
  print(L(10));

  Function Lex1(int elem) {
    return (int val) => elem * val;
  }

  var L1 = Lex1(6);
  print(L1(4));

  Person O1 = Person();
  Child O2 = Child();
  Person O3 = Child();

  List<Person> MyList = [O1, O2, O3];

  var Listfrom = List<Child>.from(MyList.whereType<Child>());
  var Listof = List<Child>.of(MyList.whereType<Child>());

  try {
    int i = 100 ~/ 0;
  } on FormatException {
    print("Format Exception");
  } on SignalException catch (elem) {
    print(elem.message);
  } catch (elem) {
    print("exepction $elem");
  } finally {
    print("End of the operation");
  }

  double CalculateSquareRoot(int x) {
    if (x < 0) {
      throw FormatException("Number cannot be negative");
    } else
      return sqrt(x);
  }

  try {
    CalculateSquareRoot(-5);
  } on FormatException catch (obj) {
    print(obj.message);
  } catch (obj) {
    print(obj);
  }
  double CalculateSquareRootV2(int x) {
    try {
      if (x < 0) {
        throw FormatException("Negative Number");
      } else {
        return sqrt(x);
      }
    } on FormatException catch (obj) {
      print(obj.message);
    } finally {
      return 0;
    }
  }

  print(CalculateSquareRootV2(4));

  try {
    Ex p1 = Ex();
  } on AgeException catch (obj) {
    print(obj.msg);
  }
  GenericStack<int> gs = GenericStack();
  gs.Push(5);
  //gs.Push("qwe");

  double GenericFunc<T extends num>(T n1, T n2) {
    return (n1 + n2) / 2;
  }

  GenericFunc<int>(5, 6);
  GenericFunc<double>(8.8, 9.9);
}
