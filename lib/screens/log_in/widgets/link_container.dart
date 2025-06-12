import 'package:flutter/material.dart';

class LinkContainer extends StatelessWidget {
  const LinkContainer({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Row(
          children: [
            Image.network(
              image,
              height: 25,
              width: 25,
            ),
            SizedBox(width: 13),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
