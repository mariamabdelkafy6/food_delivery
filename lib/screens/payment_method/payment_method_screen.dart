import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/upload_photo/upload_photo_screen.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/left_icon.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftIcon(title: 'Payment Method'),
              SizedBox(height: 20.h),
              _KindOfPayment(
                  image: 'https://i.postimg.cc/VLBv5L4m/paypal-2-1-1.png'),
              SizedBox(height: 17.h),
              _KindOfPayment(image: 'https://i.postimg.cc/VLb9hMY4/Group.png'),
              SizedBox(height: 17.h),
              _KindOfPayment(
                  image: 'https://i.postimg.cc/7h51wJSH/Payoneer-logo-1.png'),
              SizedBox(height: 219.h),
              Center(
                  child: Button(
                title: 'Next',
                returnScreen: UploadPhotoScreen(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class _KindOfPayment extends StatelessWidget {
  const _KindOfPayment({
    // ignore: unused_element
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 73.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.sp),
        color: Color(0xffFFFFFF),
      ),
      child: Transform.scale(
        scale: .5,
        child: Image.network(
          image,
          width: 86.w,
          height: 23.h,
        ),
      ),
    );
  }
}
