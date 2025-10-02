import 'package:flutter/material.dart';
import 'package:folish/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: Text('Skip')),
    );
  }
}