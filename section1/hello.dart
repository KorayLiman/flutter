import 'dart:io';
import 'privatemethods.dart';
import 'inheritance.dart';
import 'absractandinterface.dart';

class Car {
  Car() {}

  Car.secondcons(int y, String, m, bool a) {
    year = y;
    Model = m;
    this.Automatic = a;
  }
  //Car(this.year, this.Model, this.Automatic){}

  Car.thirdcons(this.year) {}
  Car.fourthcons(String Model, bool Automatic) {
    this.Model = Model;
    this.Automatic = Automatic;
  }
  void CalculateAge() {
    if (year != null) {
      print("Age of the car is: ${2022 - year!}");
    }
  }

  int? year;
  String? Model;
  bool? Automatic;
}

class Student {
  Student() {}
  Student.SecConstructor(this.StudentNumber, this.StudentName, this.IsActive) {}

  factory Student.faccons(int num, String Name, bool Active) {
    if (num <= 0)
      return Student.SecConstructor(5, "test", true);
    else
      return Student.SecConstructor(num, Name, Active);
  }

  int StudentNumber = 0;
  String? StudentName;
  bool IsActive = false;

  void classfunction() {
    print("class function");
  }
}

void TestFunc() {
  print("DartFunction");
}

int CalculateArea(int height, int weight) {
  print(height * weight);
  return height * weight;
}

int FatArrow(int num1, int num2) => num1 * num2;

int GreaterNumber(int num1, int num2) => num1 > num2 ? num1 : num2;

//OPTIONAL
int OptionalExample(int num1, int num2, [int num3 = 0]) {
  return num1 + num2 + num3;
}

int OptionalNamedExample({int num1 = 0, int num2 = 0, int num3 = 0}) {
  return num1 + num2 + num3;
}

int OptionalNamedExample2(int num0,
    {int num1 = 0, int num2 = 0, int num3 = 0}) {
  return num0 + num1 + num2 + num3;
}

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
/*
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
  int divided = (num ~/ 10);
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
  //ghub test2

  print(n2++);
  print(n2);
  print(++n2);

  List NameList = ["koray", "liman", "test"];

  for (String namee in NameList) {
    print(namee);
  }

  for (int i = 0; i < NameList.length; i++) {
    print(NameList[i]);
  }

  OuterLoop:
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == 2) {
        print("Named Loop");
        break OuterLoop;
      }
    }
  }

  print("Enter your name:");
  String? UserName = stdin.readLineSync();
  print(UserName);
  print("Enter Your Age:");
  //int? age = int.parse("35");
  int? age = int.parse(stdin.readLineSync()!);
  print(age);
  TestFunc();
  int func = CalculateArea(5, 6);
  print(CalculateArea(5, 6));
  print(func);
  print(FatArrow(5, 10));
  print(GreaterNumber(3, 8));
  print(OptionalExample(3, 4));
  print(OptionalExample(3, 4, 5));
  print(OptionalNamedExample(num2: 5, num1: 6, num3: 7));
  print(OptionalNamedExample2(4, num3: 5, num2: 6, num1: 7));

  List<int> NumbersList = List.filled(3, 2, growable: false);
  NumbersList[0] = 1;
  NumbersList[1] = 2;
  NumbersList[2] = 3;
  print(NumbersList);

  List<dynamic> List1 = List<dynamic>.filled(5, 0);
  List1[0] = "Koray";
  List1[1] = 10;
  List1[2] = false;
  print(List1);

  //DYNAMIC (GROWABLE) LIST
  List<int> Growable = [];
  Growable.add(1);
  Growable.add(2);
  Growable.add(3);
  print(Growable);
/*
  List<int?> Growable = [];
  Growable.add(1);
  Growable.add(2);
  Growable.add(3);
  Growable.length = 100;
  print(Growable);*/

  List<int> Growable1 = [1, 5, 76];
  Growable1.add(2424);
  print(Growable1);

  List<int> Growable2 = List.filled(5, 0, growable: true);
  Growable2.add(999);
  print(Growable2);

  List<int> Growable3 = List.empty(growable: true);
  Growable3.add(123);
  print(Growable3);

  List<int> NumList = [5, 6, 7, 8];
  if (NumList.isNotEmpty) {
    print(NumList.first);
    print(NumList.last);
    print(NumList.isEmpty);
    print(NumList.reversed);
    NumList.remove(6);
    NumList.removeAt(0);
    //NumList.clear();
    if (NumList.contains(8)) {
      print("exists");
    }
    print(NumList.elementAt(1));
    print(NumList.indexOf(8));
    NumList.shuffle();
  }
  Set<String> Names = Set();
  Names.add("Koray");
  Names.add("Koray");
  Names.add("Koray");
  Names.add("Ali");
  Names.add("Ayşe");
  for (String temp in Names) {
    print(temp);
  }
  if (Names.contains("Koray")) {
    print("yes");
  }

  Set<int> NumbersSet = Set.from([
    1,
    2,
    3,
    4,
    5,
    1,
    2,
    3,
    4,
    1,
  ]);
  List<int> EvenNumbers = [2, 4, 6, 8, 10];

  NumbersSet.addAll(EvenNumbers);

  Map<String, int> FieldCode = {"ankara": 23, "bursa": 435, "adana": 24};
  print(FieldCode);
  print(FieldCode["bursa"]);

  Map<String, dynamic> Koray = {
    "Surname": "Liman",
    "age": 24,
    "isMarried": false
  };
  print(Koray["age"]);

  Map<String, dynamic> EmptyMap = Map();
  EmptyMap["aa"] = 5;
  print(EmptyMap);

  for (String Keys in FieldCode.keys) {
    print(FieldCode[Keys]);
  }
  for (dynamic values in FieldCode.values) {
    print(values);
  }
  for (var element in FieldCode.entries) {
    print("${element.key} ${element.value}");
  }
  if (FieldCode.containsKey("bursa")) {
    print(FieldCode["bursa"]);
  }
*/
  var MyList = [];
  var MyList1 = <String>[];
  var MySet = {"sd"};
  var MyMap = {"asd", 4};

  var List1 = [1, 3, 5];
  var List2 = [2, 4, 6];
  var list3 = [List1, List2];
  //spreads operator
  var list4 = [...List1, ...List2];
  print(list4);

  Student student1 = Student();
  student1.StudentName = "Koray";
  var student2 = Student();
  // dynamic student3 = Student();

  var FirstCar = Car.fourthcons("Audi", true);

  Student ff = Student.faccons(0, "lol", true);
  print(ff.StudentName);

  DatabaseOperations db = DatabaseOperations();
  print(db.Connect());

  DatabaseOperations db2 = DatabaseOperations.UsernamePassword("kk", "ll");

  Client C1 = Client(500);
  C1.SetClientId = 600;
  C1.GetClientId;
  C1.GetClientIdString;

  User U1 = User();
  NormalUser NU2 = NormalUser();
  NU2.email = "asdad";
  NU2.Login();

  ReadOnlyNormalUser RNU3 = ReadOnlyNormalUser();
  AdminUser AU4 = AdminUser();
  User U5 = NormalUser();
  User U6 = AdminUser();

  List<User> AllUsers = [];
  AllUsers.add(U1);
  AllUsers.add(NU2);
  AllUsers.add(RNU3);
  AllUsers.add(AU4);
  AllUsers.add(U5);
  AllUsers.add(U6);

  void PolymorphismTest(User U) {
    U.Login();
  }

  PolymorphismTest(U1);
  PolymorphismTest(NU2);
  PolymorphismTest(RNU3);
  PolymorphismTest(AU4);

  Vehicle v11 = Truck("asd", 24, 300);
  v11.TestFunc();
}
