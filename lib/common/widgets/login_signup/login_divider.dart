import 'package:flutter/material.dart';
// import 'package:folish/common/styles/spacing_styles.dart';
// import 'package:folish/features/authentication/screens/login/widgets/login_form.dart';
// import 'package:folish/features/authentication/screens/login/widgets/login_header.dart';
import 'package:folish/utils/constants/colors.dart';
// import 'package:folish/utils/constants/image_strings.dart';
// import 'package:folish/utils/constants/sizes.dart';
// import 'package:folish/utils/constants/text_strings.dart';
// import 'package:folish/utils/helpers/helper_functions.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark, 
    required this.dividerText,
    
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

