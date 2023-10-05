import 'package:ecommerc_app/ui/screen/main_bottom_navigation_bar.dart';
import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:ecommerc_app/ui/widget/app_elevated_button.dart';
import 'package:ecommerc_app/ui/widget/app_textfield_widget.dart';
import 'package:ecommerc_app/ui/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 46,
                ),
                const LogoWidget(),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Commpleted Profile',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Get started with us with your details',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.seconderyColor,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFiledWidget(
                    controller: TextEditingController(), hintText: 'First Name'),
                const SizedBox(
                  height: 8,
                ),
                AppTextFiledWidget(
                    controller: TextEditingController(), hintText: 'Last Name'),
                const SizedBox(
                  height: 8,
                ),
                AppTextFiledWidget(
                    controller: TextEditingController(), hintText: 'Mobile'),
                const SizedBox(
                  height: 8,
                ),
                AppTextFiledWidget(
                    controller: TextEditingController(), hintText: 'City'),
                const SizedBox(
                  height: 8,
                ),
                AppTextFiledWidget(
                  controller: TextEditingController(),
                  hintText: 'Shipping Address',
                  maxLIne: 4,
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(text: 'Complete', onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainBottomNavigationBar(),
                      ),
                    );},),
                const SizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
