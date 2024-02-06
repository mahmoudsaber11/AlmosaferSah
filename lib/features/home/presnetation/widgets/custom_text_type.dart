import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextType extends StatelessWidget {
  const CustomTextType({
    super.key,
    required this.type,
    this.onPressed,
  });
  final String type;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(type, style: AppStyles.textStyle16Medium),
          TextButton(
              onPressed: onPressed,
              child: Text("See All",
                  style: AppStyles.textStyle14Medium
                      .copyWith(color: AppColors.primaryColor))),
        ],
      ),
    );
  }
}
