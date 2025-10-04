import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:folish/data/repositories/authentication/authentication_repository.dart';
import 'package:folish/data/repositories/user/user_repository.dart';
import 'package:folish/features/authentication/models/user_model.dart';
import 'package:folish/features/authentication/screens/signup/verify_email.dart';
import 'package:folish/utils/constants/image_strings.dart';
import 'package:folish/utils/helpers/network_manager.dart';
import 'package:folish/utils/popups/full_screen_loader.dart';
import 'package:folish/utils/popups/loaders.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // SignUp
  void signup() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        TImages.docerAnimation,
      );

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      // Form validation
      if (signupFormKey.currentState!.validate()) {
        return;
      }

      // Privacy policy Check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create your account, you must have to read and accept the Privacy Policy & Terms of Use',
        );
        return;
      }

      // Register user in firebase authentication & save user data in firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      // Save authenticated user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Move to verify email screen
      TLoaders.successSnackbar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue',
      );
      Get.to(() => const VerifyEmailScreen());
      
    } catch (e) {
      // Show some generic error to user
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } 
  }
}
