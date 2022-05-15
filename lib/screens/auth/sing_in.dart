import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class SingInPage extends StatelessWidget {
  SingInPage({Key? key}) : super(key: key);

  final _validateFormKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
      create: (context) => SingInCubit(_validateFormKey, _nameController,
          _emailController, _passwordController, context),
      child: BlocConsumer<SingInCubit, SingInState>(
        listener: (context, state) {},
        builder: (context, state) {
          return _buildScaffold(context);
        },
      ),
    );
  }

  _buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LogInPage()),
              (route) => false,
            );
          },
          icon: CircleAvatar(
            radius: getWidth(24.0),
            backgroundImage: AssetImage(AppImages.arrowBack),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: getHeight(20.0)),
            SizedBox(
              height: getHeight(200.0),
              width: double.infinity,
              child: Image.asset('assets/images/sing_in.png'),
            ),
            TitleTextWidget(title: "Sing In"),
            SubtitlesTextWidget(subtitle: "Create your account"),
            SizedBox(height: getHeight(10.0)),
            Form(
              key: _validateFormKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(16.0), vertical: getHeight(16.0)),
                child: Column(
                  children: [
                    MyTextFormField(
                      textInputType: TextInputType.name,
                      thisControllers: _nameController,
                      icon: const SizedBox(),
                      onPress: () {},
                      hingText: "Name",
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'Please, Fill the field';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: getHeight(16.0)),
                    MyTextFormField(
                      textInputType: TextInputType.emailAddress,
                      thisControllers: _emailController,
                      icon: const SizedBox(),
                      onPress: () {},
                      hingText: "Email",
                      obscureText: false,
                      validator: FormValidate.email,
                    ),
                    SizedBox(height: getHeight(16.0)),
                    MyTextFormField(
                      textInputType: TextInputType.phone,
                      thisControllers: _passwordController,
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
                        if (_passwordController.text.length == 8) {
                          context.read<SingInCubit>().hideKeyboard(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            MyElevatedButton(
              textOfButton: 'Sing In',
              onPress: () {
                context.read<SingInCubit>().onPress();
                context.read<SingInCubit>().clearControllers();
              },
            ),
            SizedBox(height: getHeight(10.0)),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: getHeight(60.0),
                child: TextWidget(text: "Log In"),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ),
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
