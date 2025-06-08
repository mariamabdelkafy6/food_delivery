import 'package:flutter/material.dart';
import 'package:food_delivery/features/onBoarding/on_boarding2_screen.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.postimg.cc/Gh9qGb7t/Illustartion.png',
              height: 430,
              width: 408,
            ),
            Text(
              'Find your Comfort Food\n here',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff09051C),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Here You Can find a chef or dish for every\n taste and color. Enjoy!',
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
                  MaterialPageRoute(builder: (context) => OnBoarding2Screen()),
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
