import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });
  final String image;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.r)),
      child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(
                width: 6.w,
              ),
              Text(
                text,
                style:
                    AppStyles.textStyle14Medium.copyWith(color: Colors.white),
              )
            ],
          )),
    );
  }
}
