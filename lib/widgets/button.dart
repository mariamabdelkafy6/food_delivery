import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, this.returnScreen});
  final String title;
  final Widget? returnScreen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => returnScreen!,
          ),
        );
      },
      child: Container(
        height: 57.h,
        width: 157.w,
        decoration: BoxDecoration(
          color: Color(0xff15BE77),
          borderRadius: BorderRadius.all(
            Radius.circular(15.sp),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
