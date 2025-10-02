import 'package:flutter/material.dart';
import 'package:folish/features/authentication/screens/password_configurations/forget_password.dart';
import 'package:folish/features/authentication/screens/signup/signup.dart';
// import 'package:folish/common/styles/spacing_styles.dart';
// import 'package:folish/utils/constants/colors.dart';
// import 'package:folish/utils/constants/image_strings.dart';
import 'package:folish/utils/constants/sizes.dart';
import 'package:folish/utils/constants/text_strings.dart';
import 'package:get/get.dart';
// import 'package:folish/utils/helpers/helper_functions.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
    
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
    
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
    
            // Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
    
                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
    
            const SizedBox(height: TSizes.spaceBtwSections),
    
            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
    
            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}