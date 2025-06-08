import 'package:flutter/material.dart';
import 'package:food_delivery/features/onBoarding/on_boarding2_screen.dart';
import 'package:food_delivery/features/sign_in/sign_in_screen.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.postimg.cc/WzsWpFY4/Illustration2.png',
              height: 430,
              width: 408,
            ),
            Text(
              'Food Ninja is Where Your\n Comfort Food Lives',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff09051C),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enjoy a fast and smooth food delivery at\n your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff09051C),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 42),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Container(
                height: 57,
                width: 157,
                decoration: BoxDecoration(
                  color: Color(0xff15BE77),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
