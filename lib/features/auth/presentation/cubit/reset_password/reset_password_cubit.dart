import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super((const ResetPasswordInitial()));

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  void initFormAttributes() {
    formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  Future<void> dispose() {
    _disposeController();
    _disposeFocusNodes();
    return super.close();
  }

  void _disposeFocusNodes() {
    emailFocusNode.dispose();
  }

  void _disposeController() {
    emailController.dispose();
  }

  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;

    emit(ChangeVisibility(isPassword: isPassword));
  }
}
