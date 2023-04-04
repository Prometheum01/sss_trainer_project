extension Validator on String {
  bool isEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isPassword() {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(this);
  }

  String? validateName() {
    if (trim().isEmpty) {
      return 'Please enter your name';
    } else {
      return null;
    }
  }

  String? validateEmail() {
    if (trim().isEmpty) {
      return 'Please enter your email';
    } else {
      if (trim().isEmail()) {
        return null;
      } else {
        return 'Please enter a valid email';
      }
    }
  }

  String? validatePassword() {
    if (trim().isEmpty) {
      return 'Please enter your password';
    } else {
      if (trim().isPassword()) {
        return null;
      } else {
        return 'Please enter a valid password';
      }
    }
  }
}
