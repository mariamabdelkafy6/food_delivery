import 'package:flutter/material.dart';
import 'package:food_delivery/screens/detail_product.dart/widgets/CustomDraggableScrollableSheet.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  void initState() {
    super.initState();
    // Wait for the first frame to show modal
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDraggableSheet(context);
    });
  }

  void _showDraggableSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CustomDraggableScrollableSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        'https://i.postimg.cc/kMFjZ9v5/Photo-Restaurant.png',
      ),
    );
  }
}
