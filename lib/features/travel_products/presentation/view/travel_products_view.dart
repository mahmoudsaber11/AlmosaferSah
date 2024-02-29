import 'package:almosafer_sah/core/utils/app_assets.dart';
import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/widgets/custom_general_grid_view.dart';
import 'package:almosafer_sah/core/widgets/custom_general_item.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TravelProductsView extends StatelessWidget {
  const TravelProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).travelProducts,
          style: AppStyles.textStyle24SemiBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: SingleChildScrollView(
          child: CustomGeneralGridView(
            itemBuilder: (context, index) => const CustomGeneralItem(
                image: AppAssets.imageProduct,
                text: "Electronic Luggage Scale",
                price: "20\$"),
          ),
        ),
      ),
    );
  }
}
