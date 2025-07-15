import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 267.w,
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'What do you want to order?',
          labelStyle: TextStyle(
            color: Color(0x80DA6317),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: Icon(
              Icons.search,
              color: Color(0xffDA6317),
            ),
          ),
          filled: true,
          fillColor: Color.fromARGB(31, 252, 193, 126),
          contentPadding: EdgeInsetsDirectional.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0x30DA6317)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0x30DA6317),
            ),
          ),
        ),
        style: TextStyle(fontSize: 14.sp),
      ),
    );
  }
}
