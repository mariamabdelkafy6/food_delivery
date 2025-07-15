import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/chat/chat_screen.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/order_details/order_details.dart';
import 'package:food_delivery/screens/profile/profile_screen.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: Colors.white,
          height: 74.h,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 15,
                  top: 15,
                ),
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 5,
                    end: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x2015BE77),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 105.w,
                  height: 44.h,
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color(0xff15BE77),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Color(0xff15BE77),
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Padding(
                padding: const EdgeInsetsDirectional.only(top: 15),
                child: Container(
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                    color: Color(0x2015BE77),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 105.w,
                  height: 44.h,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xff15BE77),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              icon: Icon(
                Icons.person,
                color: Color(0xff15BE77),
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Padding(
                padding: const EdgeInsetsDirectional.only(top: 15),
                child: Container(
                  padding: EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                    color: Color(0x2015BE77),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 105.w,
                  height: 44.h,
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xff15BE77),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xff15BE77),
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 15,
                  top: 15,
                ),
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 10,
                    end: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x2015BE77),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 44.h,
                  child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Color(0xff15BE77),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              icon: Icon(
                Icons.message,
                color: Color(0xff15BE77),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            HomeScreen(),
            ProfileScreen(),
            OrderDetails(),
            ChatScreen(),
          ],
        ),
      ),
    );
  }
}
