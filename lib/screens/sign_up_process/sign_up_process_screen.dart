import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/payment_method/payment_method_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';
import 'package:food_delivery/widgets/simple_text_field.dart';

class SignUpProcessScreen extends StatelessWidget {
  const SignUpProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              LeftIcon(
                title: 'Fill in your bio to get\nstarted',
              ),
              SimpleTextField(
                desc: 'Enter Your First Name',
                title: 'First Name',
              ),
              SizedBox(height: 20.h),
              SimpleTextField(
                desc: 'Enter Your Last Name',
                title: 'Last Name',
              ),
              SizedBox(height: 20.h),
              SimpleTextField(
                desc: 'Enter Your Phone Number',
                title: 'Phone Number',
              ),
              SizedBox(height: 220.h),
              Center(
                child: Button(
                  title: 'Next',
                  returnScreen: PaymentMethodScreen(),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
