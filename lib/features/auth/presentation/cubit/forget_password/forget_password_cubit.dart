import 'package:almosafer_sah/features/auth/presentation/cubit/forget_password/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super((const ForgetPasswordInitial())) {
    _initFormAttributes();
  }

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

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
  }

  void _disposeController() {
    emailController.dispose();
  }
}
