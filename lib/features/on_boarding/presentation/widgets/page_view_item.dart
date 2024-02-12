import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

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
        MySizedBox.height40,
        Image.asset(
          pageInfo.image,
          height: MediaQuery.of(context).size.height * .3,
        ),
        MySizedBox.height40,
        Text(
          pageInfo.subTitle,
          textAlign: TextAlign.center,
          style: AppStyles.textStyle16Regular,
        ),
      ],
    );
  }
}
