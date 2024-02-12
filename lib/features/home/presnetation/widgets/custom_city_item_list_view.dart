import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_city_item.dart';
import 'package:flutter/material.dart';

class CustomCityItemListView extends StatelessWidget {
  const CustomCityItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
          physics: Constants.physics,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCityItem(),
          separatorBuilder: (context, index) => MySizedBox.width24,
          itemCount: 7),
    );
  }
}
