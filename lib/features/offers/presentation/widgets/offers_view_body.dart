import 'package:almosafer_sah/core/widgets/custom_card_group_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => const CustomCardGroupItem(),
          separatorBuilder: (context, index) => SizedBox(
                height: 16.w,
              ),
          itemCount: 7),
    );
  }
}
