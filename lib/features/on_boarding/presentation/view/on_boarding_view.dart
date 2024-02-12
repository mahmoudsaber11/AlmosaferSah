import 'package:almosafer_sah/core/utils/app_styles.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:almosafer_sah/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:almosafer_sah/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              BlocProvider.of<OnBoardingCubit>(context)
                  .skipToLogin(context: context);
            },
            child: Text(
              S.of(context).skip,
              style: AppStyles.textStyle24Light,
            ),
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
