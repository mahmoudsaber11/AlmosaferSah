import 'package:equatable/equatable.dart';

abstract class ForgetPasswordState extends Equatable {
  const ForgetPasswordState();

  @override
  List<Object?> get props => [];
}

class ForgetPasswordInitial extends ForgetPasswordState {
  const ForgetPasswordInitial();
}
