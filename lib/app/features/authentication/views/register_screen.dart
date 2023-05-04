import 'package:flutter/material.dart';
import 'package:food_app_ui/app/features/authentication/views/login_screen.dart';
import 'package:food_app_ui/components/widgets/common_button.dart';
import 'package:food_app_ui/components/widgets/common_text_field.dart';
import 'package:food_app_ui/utils/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen(
      {super.key,
      required this.emailController,
      required this.passwordController});

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 80.0,
                      backgroundColor: Color(0xff2F4093),
                      child: Text(
                        'Foodie',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Register',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                              color: AppColor.secondaryColor,
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    CommonTextField(
                      hintText: 'Enter your email',
                      fieldController: emailController,
                    ),
                    const SizedBox(height: 20.0),
                    CommonTextField(
                      hintText: 'Enter your password',
                      fieldController: passwordController,
                      isPassword: true,
                    ),
                    const SizedBox(height: 30.0),
                    CommonButton(
                      buttonTitle: 'Submit',
                      onPress: () {},
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member?',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(
                                  emailController: emailController,
                                  passwordController: passwordController,
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            'Login now!',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff2F4093),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
