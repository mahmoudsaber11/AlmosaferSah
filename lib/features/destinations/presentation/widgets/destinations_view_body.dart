import 'package:almosafer_sah/core/utils/widgets/custom_city_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationsViewBody extends StatelessWidget {
  const DestinationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
        itemBuilder: (context, index) => const CustomCityItem(),
      ),
    );
  }
}
