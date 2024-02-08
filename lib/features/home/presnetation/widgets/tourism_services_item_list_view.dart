import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TourismServicesItemListView extends StatelessWidget {
  const TourismServicesItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomGeneralItem(
              image: AppAssets.imageService,
              text: "Tourism Services",
              price: "10,020 \$"),
          separatorBuilder: (context, index) => SizedBox(
                width: 26.w,
              ),
          itemCount: 7),
    );
  }
}
