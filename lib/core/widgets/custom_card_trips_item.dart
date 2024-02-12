import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/widgets/custom_button_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardTripsItem extends StatefulWidget {
  const CustomCardTripsItem({
    super.key,
  });

  @override
  State<CustomCardTripsItem> createState() => _CustomCardTripsItemState();
}

class _CustomCardTripsItemState extends State<CustomCardTripsItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0.r),
      ),
      child: Container(
        width: 164.w, // تمديد البطاقة لتملأ العرض
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomButtonFavorite(
                      backgroundColor: isFavorite
                          ? AppColors.primaryColor
                          : AppColors.colorTextField,
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      radius: 20.r,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  AspectRatio(
                    aspectRatio: 128 / 133,
                    child: Image.asset(
                      AppAssets.imageTrips,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8.h),
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
                      SizedBox(width: 4.w),
                      Text(
                        "4.8/5",
                        style: AppStyles.textStyle8Regular,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Expanded(
                    child: Text(
                      "Dubia,120 \$/Night .",
                      style: AppStyles.textStyle8Regular,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
