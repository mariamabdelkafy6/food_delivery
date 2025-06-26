import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/home/widgets/text_field.dart';

class UniqueAppBar extends StatelessWidget {
  const UniqueAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Find Your\nFavorite Food',
              style: TextStyle(
                fontSize: 31.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 25.sp,
                    color: Color(0xff15BE77),
                  ),
                  Positioned(
                    top: 12,
                    right: 19,
                    child: Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          children: [
            TextFieldWidget(),
            SizedBox(width: 14.w),
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(31, 252, 193, 126),
                border: Border.all(
                  color: Color(0x30DA6317),
                ),
              ),
              child: Center(
                child: Image.network(
                  'https://i.postimg.cc/XNFpPPkQ/Filter.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
