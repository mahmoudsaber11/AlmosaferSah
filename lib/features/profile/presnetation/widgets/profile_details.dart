import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.imageProfile),
        MySizedBox.width8,
        Column(
          children: [
            Text(
              "Said Mohamed",
              style: AppStyles.textStyle16Regular
                  .copyWith(color: AppColors.primaryColor),
            ),
            const Text("Said123nm4 @gmail .com"),
            const Text("01123234567")
          ],
        ),
      ],
    );
  }
}
