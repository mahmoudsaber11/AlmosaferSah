import 'package:almosafer_sah/features/auth/presentation/cubit/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial()) {
    _initFormAttributes();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  void _initFormAttributes() {
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
    passwordFocusNode.dispose();
  }

  void _disposeController() {
    emailController.dispose();
    passwordController.dispose();
  }

  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;

    emit(LoginChangePasswordVisibility(isPassword: isPassword));
  }
}
