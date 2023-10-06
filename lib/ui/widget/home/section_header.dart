import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String headerName;
  final VoidCallback onTapSeeAll;
  const SectionHeader(
      {super.key, required this.headerName, required this.onTapSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.6,
          ),
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(
            'See All',
            style: TextStyle(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
