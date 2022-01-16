void main(List<String> args) {
  /*
  print("Hello world");
  String str = "test";
  num? a;
  int t = 5;
  num y = 7.5;
  print(a);
  double b = 10;
  double c = 12;
  print("Alan: ${(b * c).toInt()}");

  String name = "Koray";
  String surname = "Liman";
  int age = 24;
  print(
      "My name is $name and my age is $age and length of my name is ${(name + surname).length}");
  int sayi1 = 12;
  int sayi2 = 18;

  if (sayi1 > sayi2) {
    print("$sayi1 is greater than $sayi2");
  } else if (sayi1 < sayi2) {
    print("$sayi1 is less than $sayi2");
  } else {
    print("$sayi1 is equal to $sayi2");
  }

  // TERNARY IF
  sayi1 > sayi2 ? sayi1++ : sayi1--;
  print(sayi1);
  int somenumber = sayi1 > sayi2 ? sayi1 : sayi2;
  print(somenumber);
*/
/*
  String? name;
  String? surname = "liman";

  String? message =
      name ?? surname; // if name is null print surname else print name
  print(message);*/

  String Grade = "BA";
  switch (Grade) {
    case "AA":
      print("AA");
      break;
    case "BA":
      print("BA");
      break;
    case "BB":
      print("BB");
      break;
    default:
      print("Error");
      break;
  }

  int num = 28;
  int divided = (num / 10).toInt();
  switch (divided) {
    case 3:
      print("Greater or equal to 30");
      break;
    case 2:
      print("Greater or equal to 20");
      break;
    case 1:
      print("Greater or equal to 10");
      break;
    case 0:
      print("Less than 10");
      break;
    default:
      break;
  }

  int n1 = 10;
  int n2 = 12;
  print("$n1 + $n2 = ${n1 + n2}");
  //ghub test
}
