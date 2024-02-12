import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/features/offers/presentation/widgets/offers_view_body.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).offers,
          style: AppStyles.textStyle24SemiBold,
        ),
      ),
      body: const OffersViewBody(),
    );
  }
}
