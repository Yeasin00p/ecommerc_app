import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextFiledWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const AppTextFiledWidget({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        border:OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}