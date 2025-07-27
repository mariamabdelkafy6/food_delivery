import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/verification%20_code/verification%20_code_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftIcon(
                title: 'Forgot password?',
                desc:
                    'Select which contact details should we\nuse to reset your password',
              ),
              Container(
                width: 347.w,
                height: 105.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://i.postimg.cc/VsBj3D9G/Message-icon.png',
                      width: 40.w,
                      height: 40.h,
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Via sms:',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '....',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 14.w),
                            Text(
                              '....',
                              style: TextStyle(
                                color: Color(0xff09051C),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 14.w),
                            Text(
                              '4235',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: 347.w,
                height: 81.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://i.postimg.cc/Qx8ps10X/Email-icon.png',
                      width: 40.w,
                      height: 40.h,
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Via email:',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '....',
                              style: TextStyle(
                                color: Color(0xff09051C),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 14.w),
                            Text(
                              '@gmail.com',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 269.h),
              Center(
                child: Button(
                  title: 'Next',
                  returnScreen: VerificationCodeScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
