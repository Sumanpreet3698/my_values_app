import 'package:flutter/material.dart';
import 'package:my_values_app/Screens/sign_up_page.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            image: AssetImage('lib/Image/signup.png'),fit:BoxFit.cover,
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
                const Text('Login',
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
                          labelText: 'Mobile Number/Email',
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
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xFFD9AB68),fontSize: 20.0,),
                        ),
                      ),
                    ),
                  ),),
                const SizedBox(height: 8.0),
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
                        'Login',
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
                    text: 'Login in with google',
                    onPressed: (){}),
                const SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Need an account?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFFB9BABB),
                      ),
                    ),
                    const SizedBox(width: 1.0,),
                    TextButton(
                      //color: Colors.red,
                      child:const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: (){

                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const Signup(),
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
