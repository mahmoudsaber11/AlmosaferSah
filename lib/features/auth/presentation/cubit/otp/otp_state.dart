import 'package:equatable/equatable.dart';

abstract class OTPState extends Equatable {
  const OTPState();
  @override
  List<Object?> get props => [];
}

class OTPInitialState extends OTPState {
  const OTPInitialState();
}
