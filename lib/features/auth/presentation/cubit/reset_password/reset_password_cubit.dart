import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super((const ResetPasswordInitial())) {
    _initFormAttributes();
  }

  final TextEditingController confirmController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
  }

  Future<void> dispose() {
    _disposeController();
    return super.close();
  }

  void _disposeController() {
    confirmController.dispose();
    passwordController.dispose();
  }

  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;

    emit(ChangeVisibility(isPassword: isPassword));
  }
}
