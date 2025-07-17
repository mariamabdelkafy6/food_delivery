import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/profile/favorite_product_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 320.h,
            decoration: BoxDecoration(),
            child: Image.network(
              'https://i.postimg.cc/wxf63CwB/Photo.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 30.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFE0A6),
            ),
            onPressed: () {
              _showDraggableSheet(context);
            },
            child: Container(
              width: 200.w,
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                child: Text(
                  'Show My Favorite Products!!',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFEAD1D),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showDraggableSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => const CustomDraggableScrollableSheet(),
  );
}

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({
    super.key,
  });

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
          child: ListView(
            controller: controller,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 111.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0x60FEAD1D)),
                    child: Center(
                      child: Text(
                        'Member Gold',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xffFEAD1D),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Anam Wusono',
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                    color: Color(0xff15BE77),
                    size: 20.sp,
                  )
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                'anamwp66@gmail.com',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0x803B3B3B),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: 347.w,
                height: 64.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16,
                    vertical: 13,
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        'https://i.postimg.cc/44cS0ddt/Voucher-Icon.png',
                        height: 46.h,
                        width: 43.w,
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        'You Have 3 Voucher',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Favorite',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.h),
              FavoriteProductComponent(),
              SizedBox(height: 20.h),
              FavoriteProductComponent(),
              SizedBox(height: 20.h),
              FavoriteProductComponent(),
              SizedBox(height: 20.h),
              FavoriteProductComponent()
            ],
          ),
        );
      },
    );
  }
}
