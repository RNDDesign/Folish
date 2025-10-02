import 'package:flutter/material.dart';
// import 'package:folish/common/styles/spacing_styles.dart';
// import 'package:folish/features/authentication/screens/login/widgets/login_divider.dart';
// import 'package:folish/features/authentication/screens/login/widgets/login_form.dart';
// import 'package:folish/features/authentication/screens/login/widgets/login_header.dart';
// import 'package:folish/utils/constants/colors.dart';
import 'package:folish/utils/constants/image_strings.dart';
import 'package:folish/utils/constants/sizes.dart';
// import 'package:folish/utils/constants/text_strings.dart';
// import 'package:folish/utils/helpers/helper_functions.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
      ],
    );
  }
}

