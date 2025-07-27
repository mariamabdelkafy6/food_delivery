import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditLocationScreen extends StatelessWidget {
  const EditLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
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
              'Shipping',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: 335.w,
              height: 125.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Location',
                      style: TextStyle(
                        color: Color(0x703B3B3B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Image.network(
                          'https://i.postimg.cc/T2DFTJ3V/Pin-Logo.png',
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          '8502 Preston Rd. Inglewood,\n Maine 98380',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 335.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliver To',
                      style: TextStyle(
                        color: Color(0x703B3B3B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              'https://i.postimg.cc/T2DFTJ3V/Pin-Logo.png',
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(width: 7.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '4517 Washington Ave. Manchester,\n Kentucky 39495',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 20),
                                GestureDetector(
                                  child: Text(
                                    'set location',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xff15BE77),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
