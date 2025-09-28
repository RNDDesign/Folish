import 'package:flutter/material.dart';
import 'package:folish/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:folish/utils/constants/colors.dart';
import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/device/device_utility.dart';
import 'package:folish/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light: TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}