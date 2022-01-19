import 'dart:io';

void main(List<String> args) {
  print("goes out");

  func();
  print("hello");
}

void func() {
  Future.delayed(Duration(seconds: 5), () {
    print("comes in");
  });
}
