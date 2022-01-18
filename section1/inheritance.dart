class User {
  String email = "";
  String password = "";

  void Login() {
    print("Logged in");
  }
}

class NormalUser extends User {
  void InviteFriend() {
    print("Friend invited");
  }

  @override
  void Login() {
    print("NormalUser Logged in");
    //super.Login();
  }
}

class ReadOnlyNormalUser extends User {
  void ReadName() {
    print("ReadOnlyUser");
  }

  @override
  void Login() {
    print("ReadOnlyNormalUser Logged in");
  }
}

class AdminUser extends User {
  void ShowTotalUserNumber() {
    print("Total users: 34");
  }

  @override
  void Login() {
    print("AdminUser Logged in");
  }
}

class Vehicle {
  String Model = "Undefined";
  int Age = 000;
  Vehicle(this.Model, this.Age) {
    print("Vehicle Constructor");
  }
  void TestFunc() {
    print("$Model $Age");
  }
}

class Truck extends Vehicle {
  int Price;
  Truck(String Model, int Age, this.Price) : super(Model, Age) {
    print("Truck Constructor");
    this.Price = Price;
  }
  @override
  void TestFunc() {
    // TODO: implement TestFunc
    super.TestFunc();
    print(Price);
  }
}
