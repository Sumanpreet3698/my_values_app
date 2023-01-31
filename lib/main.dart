import 'package:flutter/material.dart';
import 'package:my_values_app/Screens/sign_up_page.dart';
import 'package:my_values_app/Screens/login_screen.dart';
import 'package:my_values_app/Screens/splash_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    initialRoute: 'splash_screen',
    routes: {
      'splash_screen':(context)=>const SplashScreen(),
      'Sign_up':(context)=>const Signup(),
      'login':(context)=>const Login(),
    },
  ),);
}
