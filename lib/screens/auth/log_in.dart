import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

import '../../core/widgets/buttons/bottom_navigation_bar.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);

  final _validateFormKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordContrroller = TextEditingController();

  bool isActive = true;
  UpdateProvider? updateProvider;

  var passwortFormatter = MaskTextInputFormatter(
      mask: '########',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    updateProvider = Provider.of<UpdateProvider>(context);
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => LoginCubit(
          _validateFormKey, _emailController, _passwordContrroller, context),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return _buildScaffold(context, state);
        },
      ),
    );
  }

  _buildScaffold(BuildContext context, LoginState state) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: getHeight(96.0)),
            SizedBox(
              height: getHeight(200.0),
              width: double.infinity,
              child: Image.asset('assets/images/log_in.png'),
            ),
            TitleTextWidget(title: "Log In"),
            SubtitlesTextWidget(subtitle: "Login with social networks"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: getWidth(60.0),
                  width: getWidth(60.0),
                  child: Image.asset('assets/images/facebook.png'),
                ),
                SizedBox(
                  height: getWidth(60.0),
                  width: getWidth(60.0),
                  child: Image.asset('assets/images/instagram.png'),
                ),
                SizedBox(
                  height: getWidth(60.0),
                  width: getWidth(60.0),
                  child: Image.asset('assets/images/google.png'),
                ),
              ],
            ),
            Form(
              key: _validateFormKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(16.0), vertical: getHeight(16.0)),
                child: Column(
                  children: [
                    MyTextFormField(
                      textInputType: TextInputType.emailAddress,
                      thisControllers: _emailController,
                      obscureText: false,
                      hingText: 'Email',
                      icon: const SizedBox(),
                      onPress: () {},
                      validator: FormValidate.email,
                    ),
                    SizedBox(height: getHeight(16.0)),
                    MyTextFormField(
                      textInputType: TextInputType.phone,
                      thisControllers: _passwordContrroller,
                      obscureText: isActive,
                      hingText: 'Password',
                      icon: Icon(
                          isActive ? Icons.visibility_off : Icons.visibility),
                      onPress: () {
                        isActive = !isActive;
                        updateProvider!.updateProvider();
                      },
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'Please, Fill the field';
                        }
                        return null;
                      },
                      inputFormatters: [passwortFormatter],
                      onChanged: (value) {
                        if (_passwordContrroller.text.length == 8) {
                          context.read<LoginCubit>().hideKeyboard(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            TextWidget(text: "Forgot Password ?"),
            SizedBox(height: getHeight(16.0)),
            MyElevatedButton(
              textOfButton: "Log In",
              onPress: () async{
                debugPrint("BOSILDI");
                context.read<LoginCubit>().onPressed();
                context.read<LoginCubit>().clearControllers();

              },
            ),
            SizedBox(height: getHeight(10.0)),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: getHeight(60.0),
                child: TextWidget(text: "Sing In"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingInPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
