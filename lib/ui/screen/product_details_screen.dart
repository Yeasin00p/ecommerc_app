import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:ecommerc_app/ui/widget/app_elevated_button.dart';
import 'package:ecommerc_app/ui/widget/cart/inc_dec_button.dart';
import 'package:ecommerc_app/ui/widget/product_detail/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetilsScreen extends StatefulWidget {
  const ProductDetilsScreen({super.key});

  @override
  State<ProductDetilsScreen> createState() => _ProductDetilsScreenState();
}

class _ProductDetilsScreenState extends State<ProductDetilsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Product Deatils',
            style: TextStyle(color: Colors.black54),
          ),
          leading: const BackButton(
            color: Colors.black45,
          )),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Product Name Jordern',
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                  letterSpacing: 0.5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: IncDecButton(),
                            )
                          ],
                        ),
                        Row(
                          children: [
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
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Reviews',
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
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
                            ),
                          ],
                        ),
                        const Text(
                          'Colors',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.primaryColor,
                                    child: const Icon(Icons.check),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black54,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Text('XL'),
                                    )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        ''',
                          style: TextStyle(
                              fontSize: 13,
                              letterSpacing: 0.2,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.20),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total Price',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    Text(
                      '\$110000',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                  child: AppElevatedButton(
                    text: 'Chackout',
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
