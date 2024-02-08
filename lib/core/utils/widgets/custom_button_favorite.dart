import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonFavorite extends StatelessWidget {
  const CustomButtonFavorite({
    super.key,
    required this.radius,
    required this.size,
  });
  final double radius;
  final double size;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.colorTextField,
      child: Icon(
        Icons.favorite,
        color: Colors.white,
        size: size,
      ),
    );
  }
}
