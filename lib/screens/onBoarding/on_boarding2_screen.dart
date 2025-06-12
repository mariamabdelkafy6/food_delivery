import 'package:flutter/material.dart';
import 'package:food_delivery/screens/sign_up/sign_up_screen.dart';
import 'package:food_delivery/widgets/on_boarding_component.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingComponent(
        text: 'Food Ninja is Where Your\n Comfort Food Lives',
        desc: 'Enjoy a fast and smooth food delivery at\n your doorstep',
        image: 'https://i.postimg.cc/WzsWpFY4/Illustration2.png',
        returnScreen: SignUpScreen(),
      ),
    );
  }
}
