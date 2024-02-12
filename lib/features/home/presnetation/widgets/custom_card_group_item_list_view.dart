import 'package:almosafer_sah/core/utils/constants.dart';
import 'package:almosafer_sah/core/utils/my_sized_box.dart';
import 'package:almosafer_sah/core/widgets/custom_card_group_item.dart';
import 'package:flutter/material.dart';

class CustomCardGroupItemListView extends StatelessWidget {
  const CustomCardGroupItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: ListView.separated(
          physics: Constants.physics,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomCardGroupItem(),
          separatorBuilder: (context, index) => MySizedBox.width16,
          itemCount: 7),
    );
  }
}
