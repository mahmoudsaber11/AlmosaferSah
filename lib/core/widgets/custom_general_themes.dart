import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GeneralThemes extends StatelessWidget {
  const GeneralThemes({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.textStyle16Medium.copyWith(color: Colors.white),
          ),
          const Spacer(),
          SvgPicture.asset(AppAssets.iconsArrow)
        ],
      ),
    );
  }
}
