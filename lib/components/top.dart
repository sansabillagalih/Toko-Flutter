import 'package:flutter/material.dart';
import 'package:toko/cons.dart';
import 'package:toko/components/categorries.dart';
import 'package:toko/components/selling.dart';
import 'package:toko/components/newProduct.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: kDefaultPadding + 5),
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const categorries(),
        const SizedBox(
          height: 15,
        ),
        newProduct(size: size),
        bestSelling(size: size),
      ],
    );
  }
}
