// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditPaymentScreen extends StatelessWidget {
  const EditPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: Color(0x25F9A84D),
              ),
              child: Transform.scale(
                scale: 0.6,
                child: Image.network(
                  'https://i.postimg.cc/Sxh0YN2Q/Vector.png',
                  color: Color(0xffDA6317),
                ),
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              'Payment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 20.h),
            _EditPaymentContainer(),
            SizedBox(height: 17.h),
            _EditPaymentContainer(),
            SizedBox(height: 17.h),
            _EditPaymentContainer(),
          ],
        ),
      ),
    );
  }
}

class _EditPaymentContainer extends StatelessWidget {
  _EditPaymentContainer();

  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1.0 : 0.5,
      child: IgnorePointer(
        ignoring: isEnabled,
        child: Container(
          width: 335.w,
          height: 73.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://i.postimg.cc/fTHxF6QB/paypal-2-1-1.png',
                  width: 86.w,
                  height: 23.h,
                ),
                Text(
                  '2121 6352 8465 ****',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w900,
                    color: isEnabled ? Color(0xff3B3B3B) : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
