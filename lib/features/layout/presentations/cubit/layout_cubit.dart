import 'package:almosafer_sah/features/layout/data/repositories/layout_repo.dart';
import 'package:almosafer_sah/features/layout/presentations/cubit/layout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit({required this.layoutRepo}) : super(LayoutInitial());
  final LayoutRepo layoutRepo;
  var currentIndex = 0;

  void changeBottomNav(int index, context) {
    layoutRepo.changeBottomNav(index: index, context: context);
    emit(ChangeBottomNavState(index));
  }

  List<Widget> views() {
    return layoutRepo.views();
  }
}
