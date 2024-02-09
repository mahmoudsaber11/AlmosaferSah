import 'package:almosafer_sah/core/utils/widgets/custom_card_trips_item.dart';
import 'package:almosafer_sah/core/utils/widgets/custom_general_appBar.dart';
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
            const CustomGeneralAppBar(
              text: "Trips",
            ),
            GridView.builder(
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
            ),
          ],
        ),
      ),
    );
  }
}
