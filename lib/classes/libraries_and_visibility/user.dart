library user;

import 'password.dart';

class User {
  String username;
  String password;
  User(this.username, this.password);
  void setPassword(String newPassword) {
    if (PasswordUtils.isString(newPassword)) {
      password = newPassword;
      print('Password has been set successfully');
    } else {
      print('Password is not strong enough');
    }
  }
}
