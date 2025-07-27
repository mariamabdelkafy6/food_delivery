import 'package:flutter/material.dart';
import 'package:food_delivery/models/auth.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/log_in/log_in_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return LogInScreen();
        }
      },
    );
  }
}
