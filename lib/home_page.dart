import 'package:flutter/material.dart';
import 'package:toko/components/body.dart';
import 'package:toko/cons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: Center(
            child: TextField(
              decoration: const InputDecoration(
                  hintText: 'Search for something',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)),
              onChanged: (String value) {
                setState(() {
                });
              },
            ),
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: const MyBody(),
    );
  }
}
