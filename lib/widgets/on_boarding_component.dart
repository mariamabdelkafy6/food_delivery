import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingComponent extends StatelessWidget {
  const OnBoardingComponent(
      {super.key,
      required this.text,
      required this.desc,
      required this.image,
      required this.returnScreen});
  final String text;
  final String desc;
  final String image;
  final Widget returnScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 430.h,
              width: 408.w,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff09051C),
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff09051C),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 42.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => returnScreen),
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
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
