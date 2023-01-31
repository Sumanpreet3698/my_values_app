import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_values_app/Screens/sign_up_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/Image/signup.png'),
            fit: BoxFit.cover
      ),
      ),
     child: const Center(
       child: CircularProgressIndicator(
         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
       ),
     ),

    );
  }
  Future<Timer> loadData() async{
    return Timer(const Duration(seconds: 4),onDoneLoading);
  }
  onDoneLoading() async{
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) =>const Signup(),
        ),
    );
  }
}
