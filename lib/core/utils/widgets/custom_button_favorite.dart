import 'package:almosafer_sah/core/utils/functions/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonFavorite extends StatelessWidget {
  const CustomButtonFavorite(
      {super.key,
      required this.radius,
      required this.size,
      required this.onTap,
      required this.backgroundColor});
  final double radius;
  final double size;
  final Function()? onTap;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
