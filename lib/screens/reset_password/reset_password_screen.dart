import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/success_notification/success_notification_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';
import 'package:food_delivery/widgets/simple_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                title: 'Reset your password\nhere',
                desc:
                    'Select which contact details should we\nuse to reset your password',
              ),
              SizedBox(height: 40.h),
              SimpleTextField(
                desc: 'Enter a New Password',
                title: 'New Password',
              ),
              SizedBox(height: 20.h),
              SimpleTextField(
                desc: 'Enter a Confirm Password',
                title: 'Confirm Password',
              ),
              SizedBox(height: 290.h),
              Center(
                  child: Button(
                title: 'Next',
                returnScreen: SuccessNotificationScreen(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
