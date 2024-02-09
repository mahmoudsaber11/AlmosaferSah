import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardHotels extends StatelessWidget {
  const CustomCardHotels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 162.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.19.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(4, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.iconHotels),
          Text(
            S.of(context).hotels,
            style: AppStyles.textStyle16Medium,
          ),
        ],
      ),
    );
  }
}
