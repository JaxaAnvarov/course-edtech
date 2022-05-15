import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class SingInCubit extends Cubit<SingInState> {
  final GlobalKey<FormState> validateKey;
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  BuildContext context;

  bool isValidateState = false;

  SingInCubit(this.validateKey, this.nameController, this.emailController,
      this.passwordController, this.context)
      : super(const SingInInitial());

  void onPress() {
    if (validateKey.currentState!.validate()) {
    } else {
      isValidateState = true;
      emit(SingInValidateState(isValidateState));
    }
  }

  void clearControllers() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  void hideKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
