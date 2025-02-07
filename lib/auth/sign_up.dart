import 'package:ecomerce_app/auth/login.dart';
import 'package:ecomerce_app/auth/wedgit/custom_button.dart';
import 'package:ecomerce_app/auth/wedgit/custom_textfaild.dart';
import 'package:ecomerce_app/common/app_color.dart';
import 'package:ecomerce_app/common/app_image.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'signUp';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Create an\naccount',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
              ),
              CustomTextfaild(
                controller: emailController,
                hintText: 'Email or UserName',
                prefixIcon: Icon(Icons.person),
              ),
              CustomTextfaild(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              CustomTextfaild(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  'By clicking the Register button, you agree\nto the public offer',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xAA575757),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CustomButton(
                text: 'Create Account',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Center(
                  child: Text(
                '- OR Continue with -',
                style: TextStyle(
                  color: Color(0xAA575757),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Image.asset(AppImage.googleImage),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Image.asset(AppImage.twitterImage),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Image.asset(AppImage.facebookImage),
                      onTap: () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('I Already Have an Account ',
                      style: TextStyle(
                        color: Color(0xAA575757),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  GestureDetector(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(Login.routeName);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
