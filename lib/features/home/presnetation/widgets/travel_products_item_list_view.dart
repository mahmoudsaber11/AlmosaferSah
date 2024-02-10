import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TravelProductsItemListView extends StatelessWidget {
  const TravelProductsItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomGeneralItem(
              image: AppAssets.imageProduct,
              text: "Electronic Luggage Scale",
              price: "20\$"),
          separatorBuilder: (context, index) => SizedBox(
                width: 26.w,
              ),
          itemCount: 7),
    );
  }
}
