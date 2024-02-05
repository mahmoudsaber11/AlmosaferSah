import 'package:almosafer_sah/features/favorite/presnetation/view/favorite_view.dart';
import 'package:almosafer_sah/features/home/presnetation/view/home_view.dart';
import 'package:almosafer_sah/features/layout/data/repositories/layout_repo.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_cubit.dart';
import 'package:almosafer_sah/features/profile/presnetation/view/profile_view.dart';
import 'package:almosafer_sah/features/settings/presnetation/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutRepoImpl implements LayoutRepo {
  @override
  void changeBottomNav({required int index, required context}) {
    BlocProvider.of<LayoutCubit>(context).currentIndex = index;
  }

  @override
  List<Widget> views() {
    return [
      const HomeView(),
      const FavoriteView(),
      const ProfileView(),
      const SettingsView()
    ];
  }
}
