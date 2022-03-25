import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/Auth/sign_up.dart';
import 'package:yopals/screens/app_screens/landing_screen.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          children: [

            SizedBox(
              width: 200.0,
              height: 150.0,
              child: Image(
                image: AssetImage(
                    'assets/images/logo.png'
                ),
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Text(
              'Login',
              style: TextStyles.blackBigHeadingTextStyle,
            ),

            SizedBox(
              height: 40.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                    primary: Colors.black
                  ),
                ),
                child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(Icons.email_outlined),
                          ),
                          suffixIconColor: Colors.grey,
                          filled: false,
                          hintStyle: TextStyles.hintNormalTextStyle,
                          labelStyle: TextStyles.blackNormalTextStyle,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(5.0)
                        )
                      ),
                    ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      filled: false,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.lock_outline_rounded),
                      ),
                      suffixIconColor: Colors.grey,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text(
              'Forgot Password?',
              style: TextStyles.redBigWeight16PtTextStyle,
            ),

            SizedBox(
              height: 30.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Color(0xffFD2225),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextButton(
                        child: Text(
                            "Login",
                            style: TextStyles.whiteBigWeightTextStyle
                        ),
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith((states) => Colors.red.shade700),
                        ),
                        onPressed: (){
                          Get.to(() => LandingScreen(), transition: GetTransition.pageTransition);
                        },
                      )
                    ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New to Yopals?",
                  style: TextStyles.black16PtTextStyle),

                SizedBox(
                  width: 5.0,
                ),

                GestureDetector(
                  onTap: (){
                    Get.to(() => SignUp(), transition: GetTransition.pageTransition);
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyles.redBigWeight18PtTextStyle
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
