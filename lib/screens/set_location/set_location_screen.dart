import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/signup_success_notification/signup_success_notification_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 24,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftIcon(
                title: 'Set Your Location ',
                desc:
                    'This data will be displayed in your account\n profile for security',
              ),
              Container(
                width: 342.w,
                height: 147.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.sp),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x105A6CEA),
                      blurRadius: 6,
                      offset: Offset(0, 9),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/GhbcXHNZ/Pin-Logo.png',
                            width: 33.w,
                            height: 33.h,
                          ),
                          SizedBox(width: 14.w),
                          Text(
                            'Your Location',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff09051C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27.h),
                      Container(
                        width: 322.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF6F6F6),
                        ),
                        child: Center(
                          child: Text(
                            'Set Location',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff09051C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 328.h),
              Center(
                  child: Button(
                title: 'Next',
                returnScreen: SignupSuccessNotificationScreen(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
