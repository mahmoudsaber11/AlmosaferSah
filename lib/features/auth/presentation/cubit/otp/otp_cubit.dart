import 'package:almosafer_sah/features/auth/presentation/cubit/otp/otp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPCubit extends Cubit<OTPState> {
  OTPCubit() : super(const OTPInitialState()) {
    _initFormAttributes();
  }

  final TextEditingController otpController = TextEditingController();
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
  }

  Future<void> dispose() {
    otpController.dispose();
    return super.close();
  }
}
