import 'package:almosafer_sah/core/utils/functions/app_assets.dart';
import 'package:flutter/material.dart';

class CustomCardGroupItem extends StatelessWidget {
  const CustomCardGroupItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Image.asset(
        AppAssets.imageGroup,
        fit: BoxFit.fill,
      ),
    );
  }
}
