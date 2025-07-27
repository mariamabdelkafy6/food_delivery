import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/widgets/button.dart';

class SuccessNotificationScreen extends StatelessWidget {
  const SuccessNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 227.h),
              Image.network(
                'https://i.postimg.cc/NGCyShqs/sign-up-success.png',
                width: 172.w,
                height: 162.h,
              ),
              SizedBox(height: 33.h),
              Text(
                'Congrats!',
                style: TextStyle(
                  color: Color(0xff15BE77),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Password reset successful',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 192.h),
              Button(title: 'Back'),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
