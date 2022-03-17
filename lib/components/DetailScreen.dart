// ignore: file_names
import 'package:flutter/material.dart';
import 'package:toko/models/product.dart';
import 'package:toko/cons.dart';
import 'package:toko/components/buildBody.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: kPrimaryColor,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryLightColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: Text(
        'Details Product',
        style: const TextStyle(fontWeight: FontWeight.w700).copyWith(
          color: kPrimaryLightColor,
        ),
      ),
      actions: <Widget>[
        const FavotiteButton(),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: kPrimaryLightColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class FavotiteButton extends StatefulWidget {
  const FavotiteButton({Key? key}) : super(key: key);

  @override
  State<FavotiteButton> createState() => _FavotiteButtonState();
}

class _FavotiteButtonState extends State<FavotiteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
