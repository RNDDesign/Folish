import 'package:flutter/material.dart';
import 'package:folish/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  /// Update current index when page scrolls
  void updatePageIndicator(index) =>  currentPageIndex.value = index;

  /// Jump to specific navigation Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index and jump to next page 
  void nextPage() {
    if(currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Get.offAll(const LoginScreen());
    }

    else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  
  /// Update current idex and jump to last page 
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}