import 'package:almosafer_sah/features/auth/presentation/cubit/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpInitial()) {
    _initFormAttributes();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameContorller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

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
    confirmPasswordFocusNode.dispose();
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
  }

  void _disposeController() {
    emailController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    userNameContorller.dispose();
    phoneController.dispose();
  }

  bool isPassword = true;
  bool isConfirmPassVisible = true;

  void switchPassVisibility() {
    isPassword = !isPassword;
    emit(SignUpChangePasswordVisibility(isPassword: isPassword));
  }

  void switchConfirmPassVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;
    emit(SignUpChangePasswordVisibility(isPassword: isConfirmPassVisible));
  }
}
