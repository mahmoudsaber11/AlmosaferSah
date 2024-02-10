import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelsButton extends StatelessWidget {
  const HotelsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primaryColor),
            padding: const EdgeInsets.all(14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.r), // Make the button rectangular with rounded corners
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Hotels",
            style: TextStyle(color: AppColors.primaryColor),
          )),
    );
  }
}
