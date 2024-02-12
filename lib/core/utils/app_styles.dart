import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle textStyle24Light = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle textStyle16Regular = TextStyle(
    color: const Color(0xff2F2727),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle16Bold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle20Medium = TextStyle(
    color: AppColors.textColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle10Regular = TextStyle(
    fontSize: 10.sp,
    color: AppColors.blcakColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle8Regular = TextStyle(
    fontSize: 8.sp,
    color: AppColors.blcakColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle12Regular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle14Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle24SemiBold = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w600, color: AppColors.textColor);

  static TextStyle textStyle16Medium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
  );
}
