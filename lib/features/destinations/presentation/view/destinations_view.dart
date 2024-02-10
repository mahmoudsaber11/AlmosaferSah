import 'package:almosafer_sah/core/utils/functions/app_styles.dart';
import 'package:almosafer_sah/features/destinations/presentation/widgets/destinations_view_body.dart';
import 'package:flutter/material.dart';

class DestinationsView extends StatelessWidget {
  const DestinationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "destinations",
          style: AppStyles.textStyle24SemiBold,
        ),
      ),
      body: const DestinationsViewBody(),
    );
  }
}
