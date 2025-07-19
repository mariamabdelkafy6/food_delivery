import 'package:flutter/material.dart';
import 'package:food_delivery/screens/detail_menu/widgets/custom_detail_menu_draggable_scrollable_sheet.dart';

class DetailMenuScreen extends StatefulWidget {
  const DetailMenuScreen({super.key});

  @override
  State<DetailMenuScreen> createState() => _DetailMenuScreenState();
}

class _DetailMenuScreenState extends State<DetailMenuScreen> {
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
      builder: (context) => CustomDetailMenuDraggableScrollableSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        'https://i.postimg.cc/8zTZ7tRD/Photo-Menu.png',
      ),
    );
  }
}
