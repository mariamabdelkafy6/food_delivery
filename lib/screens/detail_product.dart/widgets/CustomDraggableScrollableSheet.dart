import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/detail_product.dart/widgets/popular_product_widget.dart';
import 'package:food_delivery/widgets/testimonials_component_widget.dart';

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      expand: false,
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(15),
              topEnd: Radius.circular(15),
            ),
            color: Color(0xFFFAF9F6),
          ),
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 25,
            horizontal: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 76.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0x2015BE77),
                      ),
                      child: Center(
                        child: Text(
                          'Popular',
                          style: TextStyle(
                            color: Color(0xff15BE77),
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 15),
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x2015BE77),
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xff15BE77),
                        size: 20.sp,
                      ),
                    ),
                    Spacer(flex: 1),
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x20FF1D1D),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Wijie Bar and Resto',
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff15BE77),
                      size: 20.sp,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '19 Km',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0x803B3B3B),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Icon(
                      Icons.star_rate_outlined,
                      color: Color(0xff15BE77),
                      size: 20.sp,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '4,8 Rating',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0x803B3B3B),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Most whole Alaskan Red King Crabs get broken down into\nlegs, claws, and lump meat. We offer all of these options\nas well in our online shop, but there is nothing like getting\nthe whole . . . .',
                  style: TextStyle(fontSize: 12.sp),
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
                      'View All',
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
                        return PopularProduct();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Testimonials',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                TestimonialsComponent(),
                SizedBox(height: 20.h),
                TestimonialsComponent(),
              ],
            ),
          ),
        );
      },
    );
  }
}
