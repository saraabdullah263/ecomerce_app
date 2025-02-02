import 'package:ecomerce_app/common/app_image.dart';
import 'package:ecomerce_app/screens/splash_screen/welcme_spalsh.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(WelcmeSpalsh.routeName)
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: Image.asset(
          AppImage.splashIcon,
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
