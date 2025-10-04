import 'package:flutter/services.dart';

/// Handles Firebase Authentication-specific exceptions
class TFirebaseAuthException implements Exception {
  final String code;
  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support.';
      case 'user-not-found':
        return 'No user found with this email.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'email-already-in-use':
        return 'This email is already registered. Try logging in.';
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      default:
        return 'Authentication failed. Please try again.';
    }
  }
}

/// Handles general Firebase exceptions (Firestore, Storage, etc.)
class TFirebaseException implements Exception {
  final String code;
  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this action.';
      case 'unavailable':
        return 'Service temporarily unavailable. Try again later.';
      case 'deadline-exceeded':
        return 'The request took too long. Please try again.';
      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}

/// Handles data formatting issues (like wrong JSON structure)
class TFormatException implements Exception {
  const TFormatException();

  String get message => 'Invalid data format encountered.';
}

/// Handles platform-level exceptions (like camera, network, etc.)
class TPlatformException implements Exception {
  final String code;
  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'network_error':
        return 'Network connection lost. Please check your internet.';
      case 'camera_access_denied':
        return 'Camera access denied. Enable it in settings.';
      case 'storage_permission_denied':
        return 'Storage permission denied. Please enable it.';
      default:
        return 'A system error occurred. Please try again.';
    }
  }
}
