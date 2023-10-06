import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String categoryItemName;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryItemWidget(
      {super.key,
      required this.categoryItemName,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.primaryColor.withOpacity(0.15),
            ),
            child: Icon(
              icon,
              size: 32,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            categoryItemName,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
                letterSpacing: 0.5),
          )
        ],
      ),
    );
  }
}
