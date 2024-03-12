import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSettings extends StatelessWidget {
  const TitleSettings({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Text(
        title,
        style: AppStyles.textStyle16Medium,
      ),
    );
  }
}
