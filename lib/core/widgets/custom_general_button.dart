import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
  });

  final String text;
  final double? width;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyles.textStyle16Regular.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
