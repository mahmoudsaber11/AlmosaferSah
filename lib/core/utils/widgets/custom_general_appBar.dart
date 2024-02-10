import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../functions/app_colors.dart';

class CustomGeneralAppBar extends StatelessWidget {
  const CustomGeneralAppBar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 20.sp,
            )),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .3.h,
        ),
        Text(
          text,
          style: AppStyles.textStyle24SemiBold
              .copyWith(color: AppColors.textColor),
        ),
      ],
    );
  }
}
