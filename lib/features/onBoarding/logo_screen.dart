import 'package:flutter/material.dart';
import 'package:food_delivery/features/onBoarding/on_boarding1_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => OnBoarding1Screen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            Text('Deliver Favorite Food   ',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xff09051C),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
