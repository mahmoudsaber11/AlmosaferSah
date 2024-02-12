import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/widgets/custom_button_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHotelItem extends StatelessWidget {
  const CustomHotelItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 163.w,
          child: Image.asset(
            AppAssets.imageHotel,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 8.h,
          ),
          width: 163.w,
          height: 42.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.r),
                bottomRight: Radius.circular(4.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Levi Meri Clancy",
                      style: AppStyles.textStyle12Regular,
                    ),
                    CustomButtonFavorite(
                      backgroundColor: AppColors.colorTextField,
                      onTap: () {},
                      radius: 10.r,
                      size: 15.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      "Dubia,120 \$/Night .",
                      style: AppStyles.textStyle8Regular,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      size: 9.sp,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    Text(
                      "4.8/5",
                      style: AppStyles.textStyle8Regular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
