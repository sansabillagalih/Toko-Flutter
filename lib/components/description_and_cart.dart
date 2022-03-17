import 'dart:math';
import 'package:flutter/material.dart';
import 'package:toko/cons.dart';
import 'package:toko/models/product.dart';

class DescriptionAndCart extends StatelessWidget {
  final Product product;

  const DescriptionAndCart({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Description',
                  style: const TextStyle(fontWeight: FontWeight.w700)
                      .copyWith(fontSize: 20),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: const Icon(Icons.arrow_back_ios_new_sharp),
                )
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  product.description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            height: kDefaultPadding * 4 - 20,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding * 2),
              color: kPrimaryColor,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(kDefaultPadding * 2),
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(kDefaultPadding * 2),
                child: Center(
                  child: Text(
                    'ADD TO CART',
                    style: const TextStyle(fontSize: 16).copyWith(
                      color: kPrimaryLightColor,
                      fontSize: kDefaultPadding,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
