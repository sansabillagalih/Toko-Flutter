import 'package:flutter/material.dart';
import 'package:toko/models/product.dart';
import 'carousel_slider.dart';
import 'logo_title_price.dart';
import 'description_and_cart.dart';

// ignore: camel_case_types
class buildBody extends StatelessWidget {
  const buildBody({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselWithIndicatorDemo(product: product),
        LogoTitlePrice(product: product),
        DescriptionAndCart(product: product),
      ],
    );
  }
}
