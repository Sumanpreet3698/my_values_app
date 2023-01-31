import 'package:flutter/material.dart';
import 'package:my_values_app/Screens/login_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // ignore: prefer_typing_uninitialized_variables
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/Image/signup.png'),fit:BoxFit.cover
        ),
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80.0,),
                //Signup
                const Text('SIGNUP',
                  style: TextStyle(
                    color: Color(0xFFD9AB68),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color:const Color(0xFFD9AB68),),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:const Padding(
                        padding:EdgeInsets.only(left: 20.0),
                        child:TextField(
                          style: TextStyle(color:Color(0xFFD9AB68)),
                         cursorColor: Colors.cyan,
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: Color(0xFFD9AB68),fontSize: 20.0,),
                      ),
                    ),
                  ),
                ),),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color:const Color(0xFFD9AB68),),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:const Padding(
                      padding:EdgeInsets.only(left: 20.0),
                      child:TextField(
                        style: TextStyle(color:Color(0xFFD9AB68)),
                        cursorColor: Colors.cyan,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Mobile Number/Email',
                          labelStyle: TextStyle(color: Color(0xFFD9AB68),fontSize: 20.0,),
                          floatingLabelStyle:TextStyle(color: Color(0xFFD9AB68),),
                        ),
                      ),
                    ),
                  ),),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color:const Color(0xFFD9AB68)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:const Padding(
                      padding:EdgeInsets.only(left: 20.0),
                      child:TextField(
                        style: TextStyle(color:Color(0xFFD9AB68)),
                        obscureText: true,
                        cursorColor: Colors.cyan,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: TextStyle(color:Color(0xFFD9AB68),fontSize: 20.0,),
                          floatingLabelStyle:TextStyle(color: Color(0xFFD9AB68),),
                          ),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding:const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color:const Color(0xFFD9AB68),),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:const Padding(
                      padding:EdgeInsets.only(left: 10.0),
                      child:Text(
                          'Sign Up',
                        style:TextStyle(
                            color: Color(0xFFD9AB68),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),),
                const SizedBox(height: 10.0,),
                Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: const[
                      Expanded(
                          child: Divider(
                            thickness: 2.5,
                            color: Color(0xFFD9AB68),
                          ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(''
                              'Or',
                          style: TextStyle(
                              color: Color(0xFFD9AB68),
                              fontSize: 20.0,
                          ),
                          ),
                      ),
                      Expanded(
                          child:Divider(
                            thickness: 2.5,
                            color: Color(0xFFD9AB68),
                          ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0,),
                SignInButton(
                    Buttons.Google,
                    text: 'Sign in with google',
                    onPressed: (){}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      'Already a user?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFFB9BABB),
                      ),
                    ),
                    const SizedBox(width:1.0,),
                    TextButton(
                      //color: Colors.red,
                      child:const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const Login(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
