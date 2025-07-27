import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onBoarding/on_boarding2_screen.dart';
import 'package:food_delivery/widgets/on_boarding_component.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingComponent(
        text: 'Find your Comfort Food\n here',
        desc:
            'Here You Can find a chef or dish for every\n taste and color. Enjoy!',
        image: 'https://i.postimg.cc/Gh9qGb7t/Illustartion.png',
        returnScreen: OnBoarding2Screen(),
      ),
    );
  }
}
