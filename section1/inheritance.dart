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
