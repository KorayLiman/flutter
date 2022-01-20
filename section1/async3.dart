void main(List<String> args) async {
  print("test");
  print("tes1");
  print("tes2");

  var number = Future(() {
    int num = 0;
    for (int i = 0; i < 1000000000; i++) num += i;
    return num;
  });

  var number1 = Future(() {
    int num = 0;
    for (int i = 0; i < 1000000000; i++) num += i;
    throw Exception("Errorrrr");
  });
  number.then((value) => print(value));
  number1.then((value) => print(value)).catchError((error) => print(error));

  var f1 = Future.value("hello");
  var f2 = Future.error("errorrrrr");

  f2.catchError((error) => print(error));

  try {
    var num = await number1;
    print(num);
  } catch (error) {
    print(error);
  }

  int addition({required int x, required int y, required int z}) {
    return x + y + z;
  }

  addition(x: 3, y: 4, z: 5);

  Object text = "qweq";
  if (text is String) {
    print(text.length);
  }

  meal m1 = meal();
  m1.m = "qwe";
  print(m1.m);
}

class meal {
  late final String m;
}
