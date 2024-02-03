import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pageInfo,
  });
  final OnBoardingModel pageInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pageInfo.title,
          style: AppStyles.textStyle20Medium,
        ),
        SizedBox(
          height: 40.h,
        ),
        Image.asset(
          pageInfo.image,
          height: MediaQuery.of(context).size.height * .3,
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          pageInfo.subTitle,
          textAlign: TextAlign.center,
          style: AppStyles.textStyle16Regular,
        ),
      ],
    );
  }
}
