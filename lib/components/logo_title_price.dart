import 'package:flutter/material.dart';
import 'package:toko/models/product.dart';
import 'package:toko/cons.dart';

class LogoTitlePrice extends StatelessWidget {
  final Product product;

  const LogoTitlePrice({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 8),
            child: Image.asset(product.logo),
          ),
          Text(
            product.name,
            style: const TextStyle(fontWeight: FontWeight.w700)
                .copyWith(fontSize: kDefaultPadding + 5),
          ),
          Text(
            '\$${product.price}',
            style:
                const TextStyle(fontSize: 16).copyWith(fontSize: kDefaultPadding + 5),
          ),
        ],
      ),
    );
  }
}
