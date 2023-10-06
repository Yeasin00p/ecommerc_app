import 'package:ecommerc_app/ui/widget/category_item_widget.dart';
import 'package:ecommerc_app/ui/widget/home/home_banner_slider.dart';
import 'package:ecommerc_app/ui/widget/home/section_header.dart';
import 'package:ecommerc_app/ui/widget/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset('assets/images/logo_nav.svg'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 16,
            child: Icon(
              Icons.person,
              size: 18,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 16,
            child: Icon(
              Icons.call,
              size: 18,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.notifications,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              HomeBannerSlider(),
              SectionHeader(headerName: 'Categories', onTapSeeAll: () {}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItemWidget(
                      categoryItemName: 'Electronics',
                      icon: Icons.computer,
                      onTap: () {},
                    ),
                    CategoryItemWidget(
                      categoryItemName: 'Tools',
                      icon: Icons.add_business,
                      onTap: () {},
                    ),
                    CategoryItemWidget(
                      categoryItemName: 'Mobiel',
                      icon: Icons.mobile_friendly,
                      onTap: () {},
                    ),
                    CategoryItemWidget(
                      categoryItemName: 'Keyborad',
                      icon: Icons.keyboard,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
                SectionHeader(headerName: 'Popular', onTapSeeAll: () {}),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                SectionHeader(headerName: 'Special', onTapSeeAll: () {}),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                SectionHeader(headerName: 'New', onTapSeeAll: () {}),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                      ProductItemPreviewCard(),
                    ],
                  ),
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}
