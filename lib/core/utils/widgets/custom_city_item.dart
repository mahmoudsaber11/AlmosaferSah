import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCityItem extends StatelessWidget {
  const CustomCityItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.imageCity,
          fit: BoxFit.cover,
        ),
        Text(
          "Dubai",
          style: AppStyles.textStyle16Medium,
        ),
      ],
    );
  }
}
