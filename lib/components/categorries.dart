import 'package:flutter/material.dart';

// ignore: camel_case_types
class categorries extends StatefulWidget {
  const categorries({Key? key}) : super(key: key);

  @override
  State<categorries> createState() => _categorriesState();
}

// ignore: camel_case_types
class _categorriesState extends State<categorries> {
  final List<String> _categories = [
    'Laptop',
    'Computer',
    'Handphone',
    'Camera',
    'Smartwatch',
    'Headphone',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                children: <Widget>[
                  Text(
                    _categories[index],
                    style: TextStyle(
                      color:
                          selectedIndex == index ? Colors.black : Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 5,
                    width: selectedIndex == index ? 20 : 0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
