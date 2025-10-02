import 'package:flutter/material.dart';
import 'package:folish/common/styles/spacing_styles.dart';
import 'package:folish/common/widgets/login_signup/login_divider.dart';
import 'package:folish/features/authentication/screens/login/widgets/login_form.dart';
import 'package:folish/features/authentication/screens/login/widgets/login_header.dart';
import 'package:folish/common/widgets/login_signup/login_socialbuttons.dart';
// import 'package:folish/utils/constants/colors.dart';
// import 'package:folish/utils/constants/image_strings.dart';
import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/constants/text_strings.dart';
import 'package:folish/utils/helpers/helper_functions.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo title Subtitle
              TLoginHeader(dark: dark),

              // Form
              TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith, dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

