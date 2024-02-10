import 'package:almosafer_sah/core/utils/widgets/custom_hotel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHotelItemListView extends StatelessWidget {
  const CustomHotelItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225.h,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomHotelItem(),
          separatorBuilder: (context, index) => SizedBox(
                width: 26.w,
              ),
          itemCount: 7),
    );
  }
}
