import 'package:flutter/material.dart';
import 'package:folish/common/widgets/login_signup/login_divider.dart';
import 'package:folish/common/widgets/login_signup/login_socialbuttons.dart';
import 'package:folish/features/authentication/screens/signup/widgets/signup_form.dart';
// import 'package:folish/utils/constants/colors.dart';
import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/constants/text_strings.dart';
import 'package:folish/utils/helpers/helper_functions.dart';
import 'package:get/get_utils/get_utils.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              TSignUpForm(dark: dark),

              // Divider 
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(dark: dark, dividerText: TTexts.orSignUpWith.capitalize!),
              
              // Social buttons 
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

