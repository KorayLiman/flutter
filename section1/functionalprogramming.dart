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
}
