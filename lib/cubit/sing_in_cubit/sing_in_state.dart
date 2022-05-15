import 'package:flutter/material.dart';

@immutable
abstract class SingInState {
  const SingInState();
}

class SingInInitial extends SingInState {
  const SingInInitial();
}

class SingInLoading extends SingInState{
  const SingInLoading();
}

class SingInValidateState extends SingInState{
  final bool _isValidateState;
  const SingInValidateState(this._isValidateState);
}

class SingInError extends SingInState{
  final String errorMessage;
  const SingInError(this.errorMessage);
}