import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_button_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardTripsItem extends StatelessWidget {
  const CustomCardTripsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            const Align(
                alignment: Alignment.centerRight,
                child: CustomButtonFavorite()),
            SizedBox(
              height: 4.h,
            ),
            Image.asset(AppAssets.imageTrips),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Text(
                  "Burj Khalifa",
                  style: AppStyles.textStyle12Regular,
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
            SizedBox(
              height: 4.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dubia,120 \$/Night .",
                style: AppStyles.textStyle8Regular,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
