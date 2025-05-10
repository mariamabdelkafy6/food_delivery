import 'package:flutter/material.dart';

class FindYourFavoriteFoodScreen extends StatelessWidget {
  const FindYourFavoriteFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find Your \nFavorite Food',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.green,
                      size: 32,
                    ))
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 267,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 250, 234, 215),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffDA6317),
                        size: 24,
                      ),
                      labelText: 'what do you want to order?',
                      labelStyle: TextStyle(
                        color: Color(0xffDA6317),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  height: 50,
                  width: 49,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 234, 215),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Color(0xffDA6317),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 4,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 253, 187, 145),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 253, 187, 145),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xffDA6317),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
