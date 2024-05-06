library password_utils;

class PasswordUtils {
  static bool isString(String password) {
    return password.length >= 8;
  }
}

