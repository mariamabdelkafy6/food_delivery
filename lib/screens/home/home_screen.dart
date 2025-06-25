import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/home/widgets/nearest_restaurant.dart';
import 'package:food_delivery/screens/home/widgets/popular_menu.dart';
import 'package:food_delivery/screens/home/widgets/text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20,
        end: 15,
        top: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  )),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Image.network(
              'https://i.postimg.cc/Xq073Vkx/Frame-13.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nearest Restaurant',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFF7C32),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) {
                    return NearestRestaurant();
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Menu',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFF7C32),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            PopularMenu(),
          ],
        ),
      ),
    ));
  }
}
