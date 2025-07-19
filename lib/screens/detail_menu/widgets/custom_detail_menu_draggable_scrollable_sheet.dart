import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/widgets/testimonials_component_widget.dart';

class CustomDetailMenuDraggableScrollableSheet extends StatelessWidget {
  const CustomDetailMenuDraggableScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
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
                      'Rainbow Sandwich\nSugarless',
                      style: TextStyle(
                        fontSize: 27.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
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
                        SizedBox(width: 20.w),
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xff15BE77),
                          size: 20.sp,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          '2000+ Order',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0x803B3B3B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Nulla occaecat velit laborum exercitation ullamco. Elit\nlabore eu aute elit nostrud culpa velit excepteur deserunt\nsunt. Velit non est cillum consequat cupidatat ex Lorem\nlaboris labore aliqua ad duis eu laborum.Strowberry Cream wheat Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 5.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Text('Strawberry'),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Container(
                                width: 5.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Text('Cream'),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Container(
                                width: 5.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Text('Wheat'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Nulla occaecat velit laborum exercitation ullamco. Elit\nlabore eu aute elit nostrud culpa velit excepteur deserunt\nsunt.',
                      style: TextStyle(fontSize: 12.sp),
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
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(
          top: 345,
          left: 20,
          child: SizedBox(
            width: 326.w,
            height: 57.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff15BE77),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Add To Chart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
