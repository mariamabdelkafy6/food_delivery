import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          title,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
