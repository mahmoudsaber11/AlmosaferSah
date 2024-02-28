import 'package:almosafer_sah/core/widgets/custom_card_trips_item.dart';
import 'package:almosafer_sah/core/widgets/custom_general_app_bar.dart';
import 'package:almosafer_sah/core/widgets/custom_general_grid_view.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsView extends StatelessWidget {
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .07.h,
            ),
            CustomGeneralAppBar(
              text: S.of(context).trips,
            ),
            CustomGeneralGridView(
              itemBuilder: (context, index) => const CustomCardTripsItem(),
            ),
          ],
        ),
      ),
    );
  }
}
