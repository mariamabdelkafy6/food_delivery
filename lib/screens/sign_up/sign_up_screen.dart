import 'package:flutter/material.dart';
import 'package:food_delivery/screens/log_in/log_in_screen.dart';
import 'package:food_delivery/screens/sign_up/widgets/check_icon.dart';
import 'package:food_delivery/screens/sign_up/widgets/text_field_component.dart';
import 'package:food_delivery/screens/sign_up_process/sign_up_process_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.postimg.cc/Jn1Qn8H1/Logo.png',
                  height: 139,
                  width: 175,
                ),
                Text(
                  'FoodNinja',
                  style: GoogleFonts.viga(
                    textStyle: TextStyle(
                      color: Color(0xff15BE77),
                      fontSize: 40,
                    ),
                  ),
                ),
                Text(
                  'Deliever Favorite Food',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 65),
                Text(
                  'Sign Up For Free',
                  style: TextStyle(
                    color: Color(0xff09051C),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                TextFieldComponent(
                  title: 'Anamwp . . |',
                  desc: 'Enter your name',
                  icon: Icons.person,
                ),
                SizedBox(height: 12),
                TextFieldComponent(
                  title: 'Email',
                  desc: 'Enter your email',
                  icon: Icons.email,
                ),
                SizedBox(height: 12),
                TextFieldComponent(
                  title: 'Password',
                  desc: 'Enter your password',
                  icon: Icons.password,
                  visibilityIcon: Icons.visibility_outlined,
                ),
                SizedBox(height: 19),
                Row(
                  children: [
                    CheckIcon(),
                    SizedBox(width: 8),
                    Text(
                      'Keep Me Signed In',
                      style: TextStyle(
                        color: Color(0x80000000),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    CheckIcon(),
                    SizedBox(width: 8),
                    Text(
                      'Email Me About Special Pricing',
                      style: TextStyle(
                        color: Color(0x80000000),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 43),
                Container(
                  width: 175,
                  height: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff15BE77),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpProcessScreen(),
                          ),
                        );
                      },
                      child: Button(title: 'Create Account'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'already have an account?',
                    style: TextStyle(
                      color: Color(0xff15BE77),
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff15BE77),
                      decorationThickness: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
