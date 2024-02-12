import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGeneralItem extends StatelessWidget {
  const CustomGeneralItem({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });
  final String image;
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 163.w,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 8.h,
          ),
          width: 163.w,
          height: 42.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.r),
                bottomRight: Radius.circular(4.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: AppStyles.textStyle12Regular,
                  overflow: TextOverflow.ellipsis,
                ),
                MySizedBox.height4,
                Text(
                  price,
                  style: AppStyles.textStyle8Regular,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
