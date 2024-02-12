import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
              SvgPicture.asset(image),
              MySizedBox.width6,
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
