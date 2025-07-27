import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteProductComponent extends StatelessWidget {
  const FavoriteProductComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 125.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 8,
        ),
        child: Row(
          children: [
            Image.network(
              'https://i.postimg.cc/8zdpMxMp/Menu-Photo.png',
              height: 62.h,
              width: 62.w,
            ),
            SizedBox(width: 18.w),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spicy fresh crab',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xff09051C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Waroenk kita',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0x8009051C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '\$ 35',
                    style: TextStyle(
                      color: Color(0xff15BE77),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30.w),
            Container(
              width: 79.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Color(0xff15BE77),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  'Buy Again',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
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
