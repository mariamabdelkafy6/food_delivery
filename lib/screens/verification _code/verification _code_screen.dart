import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/reset_password/reset_password_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';
import 'package:food_delivery/widgets/simple_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftIcon(
                title: 'Enter 4-digit\nVerification code',
                desc:
                    'Code send to +6282045**** . This code will\nexpired in 01:30',
              ),
              SizedBox(height: 38.h),
              SimpleTextField(
                desc: 'Enter 4-digit',
                title: 'Enter',
              ),
              SizedBox(height: 322.h),
              Center(
                child: Button(
                  title: 'Next',
                  returnScreen: ResetPasswordScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
