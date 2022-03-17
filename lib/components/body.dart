import 'package:flutter/material.dart';
import 'package:toko/components/top.dart';
import 'package:toko/cons.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              // Untuk atur posisi widget
              SizedBox(
                height: size.height * 0.27, // mengatur ukuran body
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.275, // ukuran kotak biru atas
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color: kPrimaryColor,
                      ),
                    ),
                    // Untuk atur widget text dan icon
                    Positioned(
                      top: size.height * 0.01, // mengatur posisi text
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        child: Center(
                          child: Column(children: <Widget>[
                            const Text(
                              'Balance',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8.0),
                            const Text(
                              '\$5200',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 17.0),
                              child: Container(
                                width: size.width * 0.8,
                                height: size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(144, 144, 144, 144),
                                ),
                                child: Center(
                                  child: RichText(
                                    text: const TextSpan(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        TextSpan(
                                            text:
                                                '0xdAEa61CA2b8b9Fb8Bd4fACC8a4Ffc2De01e',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13)),
                                        WidgetSpan(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 3.0),
                                            child: Icon(
                                              Icons.copy,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: size.height *
                                          0.025, // mengatur ukuran icon send
                                      child: IconButton(
                                        onPressed: () {
                                          // Navigator.pushNamed(
                                          //     context, '/transfer');
                                        },
                                        icon: Icon(
                                          Icons.file_upload_outlined,
                                          color: kPrimaryColor,
                                          size: size.height *
                                              0.025, // mengatur ukuran icon send
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Text(
                                      'Send',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: size.height *
                                          0.025, // mengatur ukuran icon receive
                                      child: IconButton(
                                        onPressed: () {
                                          // Navigator.pushNamed(
                                          //     context, '/transfer');
                                        },
                                        icon: Icon(
                                          Icons.file_download_outlined,
                                          color: kPrimaryColor,
                                          size: size.height *
                                              0.025, // mengatur ukuran icon Receive
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Text(
                                      'Receive',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: size.height *
                                          0.025, // mengatur ukuran icon buy
                                      child: IconButton(
                                        onPressed: () {
                                          // Navigator.pushNamed(
                                          //     context, '/transfer');
                                        },
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: kPrimaryColor,
                                          size: size.height *
                                              0.025, // mengatur ukuran icon buy
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Text(
                                      'Buy',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Top(),
            ],
        ),
      ),
    );
  }
}
