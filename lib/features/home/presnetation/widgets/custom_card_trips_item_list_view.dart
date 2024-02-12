import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_card_trips_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardTripsItemListView extends StatelessWidget {
  const CustomCardTripsItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3.h,
      child: ListView.separated(
          physics: Constants.physics,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCardTripsItem(),
          separatorBuilder: (context, index) => MySizedBox.width26,
          itemCount: 7),
    );
  }
}
