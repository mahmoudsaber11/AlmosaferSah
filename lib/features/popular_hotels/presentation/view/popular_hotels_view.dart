import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/core/widgets/custom_general_grid_view.dart';
import 'package:almosafer_sah/core/widgets/custom_hotel_item.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularHotelsView extends StatelessWidget {
  const PopularHotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).hotels,
          style: AppStyles.textStyle24SemiBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: SingleChildScrollView(
          child: CustomGeneralGridView(
            itemBuilder: (context, index) => const CustomHotelItem(),
          ),
        ),
      ),
    );
  }
}
