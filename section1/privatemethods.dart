import 'dart:math';

class DatabaseOperations {
  String _UserName = "Koray";
  String _Password = "124";

  DatabaseOperations() {}
  DatabaseOperations.UsernamePassword(String Username, String Password) {}

  bool Connect() {
    if (_IsOnline()) {
      if (_UserName == "Koray" && _Password == "124")
        return true;
      else
        return false;
    }
    return false;
  }

  bool _IsOnline() {
    if (Random().nextBool())
      return true;
    else
      return false;
  }
}
