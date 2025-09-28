import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      // Get.to(LoginScreen())
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