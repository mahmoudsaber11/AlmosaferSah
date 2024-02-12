import 'package:almosafer_sah/core/utils/app_colors.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextType extends StatelessWidget {
  const CustomTextType({
    super.key,
    required this.type,
    this.onTap,
  });
  final String type;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: isArabic() ? 0 : 20.w, left: isArabic() ? 20.w : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(type, style: AppStyles.textStyle16Medium),
          InkWell(
              onTap: onTap,
              child: Text(S.of(context).seeAll,
                  style: AppStyles.textStyle10Regular
                      .copyWith(color: AppColors.primaryColor))),
        ],
      ),
    );
  }
}
