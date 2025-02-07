import 'package:ecomerce_app/auth/wedgit/custom_button.dart';
import 'package:ecomerce_app/auth/wedgit/custom_textfaild.dart';
import 'package:flutter/material.dart';

class ForgerPassword extends StatefulWidget {
  static const String routeName = 'forgetPassword';
  const ForgerPassword({super.key});

  @override
  State<ForgerPassword> createState() => _ForgerPasswordState();
}

class _ForgerPasswordState extends State<ForgerPassword> {
  final emailController = TextEditingController();
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
                  'Forgot\npassword?',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
              ),
              CustomTextfaild(
                controller: emailController,
                hintText: 'Enter Your Email Adresse',
                prefixIcon: Icon(Icons.email),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  '* We will send you a message to set or reset\n your new password',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xAA575757),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CustomButton(
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
