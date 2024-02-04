import 'package:almosafer_sah/features/auth/presentation/cubit/reset_password/reset_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super((const ResetPasswordInitial()));

  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;

    emit(ChangeVisibility(isPassword: isPassword));
  }
}
