import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/check_out/check_out_screen.dart';
import 'package:food_delivery/screens/edit_location/edit_location_screen.dart';
import 'package:food_delivery/screens/edit_payment/edit_payment_screen.dart';
import 'package:food_delivery/widgets/details_of_price.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: SingleChildScrollView(
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
                'Confirm Order',
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
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Deliver To',
                            style: TextStyle(
                              color: Color(0x603B3B3B),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditPaymentScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff15BE77),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 14.h),
                      Row(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/T2DFTJ3V/Pin-Logo.png',
                            width: 40.w,
                            height: 40.h,
                          ),
                          SizedBox(width: 7.w),
                          Text(
                            '4517 Washington Ave. Manchester,\n Kentucky 39495',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              Container(
                width: 335.w,
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyle(
                              color: Color(0x603B3B3B),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditLocationScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff15BE77),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
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
              SizedBox(height: 205.h),
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
                              builder: (context) => CheckOutScreen(),
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
      ),
    );
  }
}
