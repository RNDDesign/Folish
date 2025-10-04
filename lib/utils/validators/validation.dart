class TValidator {

  static String? validateEmptyText(String? fieldName, String value) {
    if(value == null || value.isEmpty) {
      return '$fieldName is required.';
    }

    return null;
  }

  static String? validateEmail(String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegExp.hasMatch(val)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    // Regex checks
    final uppercaseRegExp = RegExp(r'[A-Z]');
    final lowercaseRegExp = RegExp(r'[a-z]');
    final numberRegExp = RegExp(r'[0-9]');
    final specialCharRegExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (!uppercaseRegExp.hasMatch(val)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!lowercaseRegExp.hasMatch(val)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!numberRegExp.hasMatch(val)) {
      return 'Password must contain at least one number';
    }
    if (!specialCharRegExp.hasMatch(val)) {
      return 'Password must contain at least one special character';
    }

    return null; // Password is valid
  }

  static String? validatePhoneNumber(String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }

    // Regex for 10-digit numbers (can start with 6-9)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(val)) {
      return 'Enter a valid 10-digit phone number';
    }

    return null; // Valid phone number
  }
}
