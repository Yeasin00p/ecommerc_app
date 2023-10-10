import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Image.asset(
            'assets/images/product.png',
            height: 80,
            width: 160,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'Product Name',
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
              letterSpacing: 0.5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$400',
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.star,
                color: Colors.amberAccent,
                size: 14,
              ),
              const Text(
                '4.5',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: const Icon(
                  Icons.favorite_border,
                  size: 10,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
