import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:almosafer_sah/features/home/presnetation/widgets/custom_card_hotels_or_flights.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowHotelsAndFlights extends StatelessWidget {
  const CustomRowHotelsAndFlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Row(
        children: [
          const Expanded(
            child: CustomCardHotelsOrFlights(
              image: AppAssets.iconFlights,
              text: "Flights",
            ),
          ),
          SizedBox(
            width: 18.w,
          ),
          const Expanded(
            child: CustomCardHotelsOrFlights(
              image: AppAssets.iconHotels,
              text: "Hotels",
            ),
          ),
        ],
      ),
    );
  }
}
