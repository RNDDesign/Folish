import 'package:flutter/material.dart';
import 'package:folish/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:folish/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:folish/features/authentication/screens/onboarding/widgets/onboarding_next_page.dart';
import 'package:folish/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:folish/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
// import 'package:folish/utils/constants/colors.dart';
import 'package:folish/utils/constants/image_strings.dart';
// import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/constants/text_strings.dart';
// import 'package:folish/utils/device/device_utility.dart';
// import 'package:folish/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnboardingSkip(),

          /// Dot navigation smooth page indicator
          const OnboardingNavigation(),

          /// Circular button
          OnboardingNextButton(),
        ],
      ),
    );
  }
}


