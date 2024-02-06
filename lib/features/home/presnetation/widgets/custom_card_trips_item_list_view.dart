import 'package:almosafer_sah/core/utils/widgets/custom_card_trips_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardTripsItemListView extends StatelessWidget {
  const CustomCardTripsItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCardTripsItem(),
          separatorBuilder: (context, index) => SizedBox(
                width: 26.w,
              ),
          itemCount: 7),
    );
  }
}
