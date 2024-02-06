import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonFavorite extends StatelessWidget {
  const CustomButtonFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 14.r,
      backgroundColor: AppColors.colorTextField,
      child: Icon(
        Icons.favorite,
        color: Colors.white,
        size: 20.sp,
      ),
    );
  }
}
