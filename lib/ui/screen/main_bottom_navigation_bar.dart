import 'package:ecommerc_app/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerc_app/ui/screen/cart_screen.dart';
import 'package:ecommerc_app/ui/screen/category_screen.dart';
import 'package:ecommerc_app/ui/screen/home_screen.dart';
import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  final List<Widget> screen = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationController>(builder: (_) {
        return screen[controller.selectedIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomNavigationController>(
        builder: (_) {
          return BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.seconderyColor,
              showUnselectedLabels: true,
              onTap: (index) {
                controller.changeIndex(index);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Categoris'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard), label: 'Wish'),
              ]);
        },
      ),
    );
  }
}
