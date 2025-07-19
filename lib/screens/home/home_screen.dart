import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/home/widgets/nearest_restaurant.dart';
import 'package:food_delivery/screens/home/widgets/popular_menu.dart';
import 'package:food_delivery/widgets/unique_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 15,
            top: 20,
          ),
          child: _buildContent()),
    );
  }

  Widget _buildContent() {
    if (currentPage == 0) {
      return _buildMainContent();
    } else if (currentPage == 1) {
      return _buildDetailsContent();
    } else {
      return _popularMenuContent();
    }
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UniqueAppBar(),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                child: Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFF7C32),
                  ),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                child: Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFF7C32),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          PopularMenu(),
        ],
      ),
    );
  }

  Widget _buildDetailsContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UniqueAppBar(),
          SizedBox(height: 20.h),
          Text(
            'Popular Restaurant',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 20.h),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 20.w,
            children: [
              NearestRestaurant(),
              NearestRestaurant(),
              NearestRestaurant(),
              NearestRestaurant(),
              NearestRestaurant(),
              NearestRestaurant(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _popularMenuContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UniqueAppBar(),
          SizedBox(height: 20.h),
          Text(
            'Popular Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 20.h),
          PopularMenu(),
          SizedBox(height: 20.h),
          PopularMenu(),
          SizedBox(height: 20.h),
          PopularMenu(),
        ],
      ),
    );
  }
}
