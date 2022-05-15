class FormValidate {
  static String? email(value) {
    if (value.isEmpty) {
      return "Please, Fill the field";
    } else if (!_validPattern(value, _emailPattern)) {
      return "Input valid email";
    }
  }

  static String? password(value) {
    if (value.isEmpty) {
      return "Please, Fill the field";
    } else if (!_validPattern(value, _passwordPattern)) {
      return "Password is not safety";
    }
  }

  static bool _validPattern(String value, String pattern) {
    return RegExp(pattern).hasMatch(value);
  }

  static const String _passwordPattern =
      r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9][a-zA-Z0-9!@#$%^&*.,]{7,17}$/";

  static const String _emailPattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
}
