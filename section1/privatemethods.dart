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

class Client {
  Client(int Id) {
    _IdControl(Id);
  }

  void set SetClientId(int Id) {
    if (Id > 300)
      _ClientId = Id;
    else
      return;
  }

  int? get GetClientId {
    return _ClientId;
  }

  String get GetClientIdString {
    return "Id: $_ClientId";
  }

  String get GetClientIdString2 => "Id: $_ClientId";

  void _IdControl(int Id) {
    if (Id > 300)
      _ClientId = Id;
    else
      return;
  }

  int? _ClientId;
}
