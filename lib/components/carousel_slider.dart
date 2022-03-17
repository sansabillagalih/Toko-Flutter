// ignore_for_file: use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toko/models/product.dart';
import 'package:toko/cons.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  final Product product;

  const CarouselWithIndicatorDemo({required this.product});
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _CarouselWithIndicatorState(product: product);
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  final Product product;

  _CarouselWithIndicatorState({required this.product});
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Image> images = [
      Image.network(product.imageUrls.map((url) => url).toList()[0]),
      Image.network(product.imageUrls.map((url) => url).toList()[1]),
      Image.network(product.imageUrls.map((url) => url).toList()[2]),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: images,
          carouselController: _controller,
          options: CarouselOptions(
            height: kDefaultPadding * 15,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _current = index;
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: kDefaultPadding - 8,
                  height: kDefaultPadding - 8,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? kgrey2
                              : kgrey2)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
