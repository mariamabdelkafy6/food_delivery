import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/models/auth.dart';
import 'package:food_delivery/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/log_in/widgets/link_container.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/logo_component.dart';
import 'package:food_delivery/widgets/simple_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String? errorMessage = "";

  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(
        () {
          errorMessage = e.message;
        },
      );
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(
        () {
          errorMessage = e.message;
        },
      );
    }
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : "Humm ? $errorMessage");
  }

  Widget _submitButton() {
    return SizedBox(
      height: 57.h,
      width: 157.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff15BE77),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
          ),
        ),
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        child: Text(
          isLogin ? 'Login' : 'Register',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(
          () {
            isLogin = !isLogin;
          },
        );
      },
      child: Text(isLogin ? 'Register instead' : 'Login instead'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoComponent(),
                SizedBox(height: 60.h),
                Text(
                  'Login To Your Account',
                  style: TextStyle(
                    color: Color(0xff09051C),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.h),
                SimpleTextField(
                  desc: 'Enter Your Email',
                  title: 'Email',
                ),
                SizedBox(height: 12.h),
                SimpleTextField(
                  desc: 'Enter Your Password',
                  title: 'Password',
                ),
                _errorMessage(),
                SizedBox(height: 20.h),
                Text(
                  'Or Continue With',
                  style: TextStyle(
                    color: Color(0xff09051C),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinkContainer(
                      title: 'Facebook',
                      image: 'https://i.postimg.cc/7hb0kKSj/facebook.png',
                    ),
                    SizedBox(width: 17.w),
                    LinkContainer(
                      title: 'Google',
                      image: 'https://i.postimg.cc/k59jmdGZ/google-icon-1.png',
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      color: Color(0xff15BE77),
                      fontSize: 12.sp,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff15BE77),
                      decorationThickness: 0.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 36.h),
                _submitButton(),
                _loginOrRegisterButton(),
                SizedBox(height: 36.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
