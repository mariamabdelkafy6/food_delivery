import 'package:flutter/material.dart';
import 'package:food_delivery/screens/log_in/widgets/link_container.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/logo_component.dart';
import 'package:food_delivery/widgets/simple_text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: Column(
            children: [
              LogoComponent(),
              SizedBox(height: 60),
              Text(
                'Login To Your Account',
                style: TextStyle(
                  color: Color(0xff09051C),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              SimpleTextField(desc: 'Enter Your Email', title: 'Email'),
              SizedBox(height: 12),
              SimpleTextField(desc: 'Enter Your Password', title: 'Password'),
              SizedBox(height: 20),
              Text(
                'Or Continue With',
                style: TextStyle(
                  color: Color(0xff09051C),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkContainer(
                    title: 'Facebook',
                    image: 'https://i.postimg.cc/7hb0kKSj/facebook.png',
                  ),
                  SizedBox(width: 21),
                  LinkContainer(
                    title: 'Google',
                    image: 'https://i.postimg.cc/k59jmdGZ/google-icon-1.png',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Forgot Your Password?',
                style: TextStyle(
                  color: Color(0xff15BE77),
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff15BE77),
                  decorationThickness: 0.5,
                ),
              ),
              SizedBox(height: 36),
              Button(title: 'Login'),
            ],
          ),
        ),
      ),
    );
  }
}
