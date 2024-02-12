import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_general_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageItemListView extends StatelessWidget {
  const PackageItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.separated(
          physics: Constants.physics,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomGeneralItem(
              image: AppAssets.imagePackage,
              text: "Sharm El Sheikh Packages",
              price: "20\$"),
          separatorBuilder: (context, index) => MySizedBox.width26,
          itemCount: 7),
    );
  }
}
