import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/confirm_order/confirm_order_screen.dart';
import 'package:food_delivery/widgets/details_of_price.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
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
              'Order details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 14.h),
            PriceDetailsContainer(),
            SizedBox(height: 14.h),
            PriceDetailsContainer(),
            SizedBox(height: 14.h),
            PriceDetailsContainer(),
            SizedBox(height: 84.h),
            Container(
              width: 346.w,
              height: 270.h,
              decoration: BoxDecoration(
                color: Color(0xff15BE77),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(20),
                child: Column(
                  children: [
                    PriceDetails(
                      title: 'Sub-Total',
                      price: '120 \$',
                    ),
                    SizedBox(height: 7.h),
                    PriceDetails(
                      title: 'Delivery Charge',
                      price: '10 \$',
                    ),
                    SizedBox(height: 7.h),
                    PriceDetails(
                      title: 'Discount',
                      price: '20 \$',
                    ),
                    SizedBox(height: 21.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          '150 \$',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmOrderScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 323.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'Place My Order',
                            style: TextStyle(
                              color: Color(0xff15BE77),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
