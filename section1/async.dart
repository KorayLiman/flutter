import 'dart:io';

void main(List<String> args) {
  print("goes out");
  AA();
  func();
  print("hello");
  var res = func1();
  res.then((value) => print(value)).catchError((err) {
    print(err);
  }).whenComplete(() => print("Completed"));

  func2().then((value) => print(value)).whenComplete(() => print("Completed"));
}

void func() {
  Future.delayed(Duration(seconds: 5), () {
    print("comes in");
  });
}

Future<String> func1() {
  Future<String> result = Future.delayed(Duration(seconds: 2), () {
    //throw Exception("errorrrrrr");
    return "Finished";
  });
  return result;
}

Future<String> func2() {
  return Future<String>.delayed(Duration(seconds: 3), () => "Another");
}

void AA() async {
  String person = await func2();
  print(person.length);


  
}
