import 'package:almosafer_sah/core/utils/widgets/custom_general_appBar.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/hotels_button.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/hotels_grid_view.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/trips_button.dart';
import 'package:almosafer_sah/features/favorite/presnetation/widgets/trips_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  int currentIndex = 0;
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
            const CustomGeneralAppBar(text: "Favorite"),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                TripsButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                SizedBox(
                  width: 16.w,
                ),
                HotelsButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                ),
              ],
            ),
            if (currentIndex == 0) ...[
              TripsGridView(screenHeight: screenHeight),
            ] else ...[
              HotelsGridView(screenHeight: screenHeight),
            ]
          ],
        ),
      ),
    );
  }
}
