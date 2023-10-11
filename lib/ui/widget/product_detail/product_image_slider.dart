import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  ProductImageSlider({super.key});
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 160,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              _currentSelectedIndex.value = index;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(builder: (BuildContext context) {
              return Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/product.png'),
                    fit: BoxFit.cover
                  ),
                ),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16),
                ),
              );
            });
          }).toList(),
        ),
        
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currentSelectedIndex,
                    builder: (context, updateValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Container(
                              margin: const EdgeInsets.all(3),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: i == _currentSelectedIndex.value
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: i == _currentSelectedIndex.value
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                  )),
                            )
                        ],
                      );
                    }),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
