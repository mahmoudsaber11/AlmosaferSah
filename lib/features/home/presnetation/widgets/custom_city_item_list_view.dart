import 'package:almosafer_sah/core/utils/widgets/custom_city_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCityItemListView extends StatelessWidget {
  const CustomCityItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCityItem(),
          separatorBuilder: (context, index) => SizedBox(
                width: 24.w,
              ),
          itemCount: 7),
    );
  }
}
