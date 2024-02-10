import 'package:almosafer_sah/core/utils/widgets/custom_card_trips_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsGridView extends StatelessWidget {
  const TripsGridView({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: screenHeight * 0.3.h,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),
      itemBuilder: (context, index) => const CustomCardTripsItem(),
    );
  }
}
