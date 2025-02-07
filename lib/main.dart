import 'package:ecomerce_app/auth/forger_password.dart';
import 'package:ecomerce_app/auth/login.dart';
import 'package:ecomerce_app/auth/sign_up.dart';
import 'package:ecomerce_app/screens/home_screen/home_screen.dart';
import 'package:ecomerce_app/screens/splash_screen/splash_screen.dart';
import 'package:ecomerce_app/screens/splash_screen/welcme_spalsh.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName:(_)=> HomeScreen(),
        WelcmeSpalsh.routeName:(_)=>WelcmeSpalsh(),
        Login.routeName:(_)=>Login(),
        SignUp.routeName:(_)=>SignUp(),
        ForgerPassword.routeName:(_)=>ForgerPassword()
      },
    );
  }
}
