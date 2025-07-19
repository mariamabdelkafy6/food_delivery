import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/detail_product.dart/detail_product_screen.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProduct(),
          ),
        );
      },
      child: Container(
        width: 350.w,
        height: 87.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Row(
            children: [
              Image.network('https://i.postimg.cc/PxdvzzBd/Photo-Menu.png'),
              Spacer(flex: 1),
              Text(
                'Green Noddle',
                style: TextStyle(
                  color: Color(0xff09051C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(
                flex: 8,
              ),
              Text(
                '\$15',
                style: TextStyle(
                  color: Color(0xffFEAD1D),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
