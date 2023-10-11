import 'package:ecommerc_app/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerc_app/ui/widget/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return CategoryItemWidget(
              categoryItemName: 'Computer',
              icon: Icons.computer,
              onTap: () {});
        },
      ),
    );
  }
}
