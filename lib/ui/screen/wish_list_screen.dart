import 'package:ecommerc_app/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerc_app/ui/widget/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
            onPressed: () {
              controller.changeIndex(0);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 7 / 8,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ProductItemPreviewCard();
          }),
    );
  }
}
