import 'package:course_ed_tech/cubit/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final GlobalKey<FormState> validateKey;
  TextEditingController emailController;
  TextEditingController passwordController;
  BuildContext context;

  bool isValidateState = false;

  LoginCubit(this.validateKey, this.emailController, this.passwordController, this.context)
      : super(const LoginInitial());

  Future onPressed() async {
    if (validateKey.currentState!.validate()) {
      debugPrint("Navigate");
      Navigator.pushNamed(context, "/bottomNavigationBar");
    } else {
      isValidateState = true;
      emit(LoginValidateState(isValidateState));
    }
  }

  void clearControllers(){
    emailController.clear();
    passwordController.clear();
  }

  void hideKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
