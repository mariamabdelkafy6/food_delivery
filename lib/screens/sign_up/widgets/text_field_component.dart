import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent(
      {super.key,
      required this.title,
      required this.desc,
      required this.icon,
      this.visibilityIcon});
  final String title;
  final String desc;
  final IconData icon;
  final IconData? visibilityIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: desc,
        labelText: title,
        labelStyle: TextStyle(
          color: Color(0x803B3B3B),
        ),
        prefixIcon: Icon(
          icon,
          color: Color(0x8015BE77),
        ),
        suffixIcon: Icon(visibilityIcon),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
      style: TextStyle(fontSize: 14),
    );
  }
}
