import 'package:flutter/material.dart';

@immutable
abstract class LoginState{
  const LoginState();
}

class LoginInitial extends LoginState{
  const LoginInitial();
}

class LoginLoading extends LoginState{
  const LoginLoading();
}

class LoginValidateState extends LoginState {
  final bool _isValidateState;

  const LoginValidateState(this._isValidateState);
}

class LoginError extends LoginState{
  final String errorMessage;
  const LoginError(this.errorMessage);
}