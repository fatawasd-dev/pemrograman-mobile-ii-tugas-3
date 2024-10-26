import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Image Widget"),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.amber,
              child: const Image(image: AssetImage("images/image.jpg")),
            ),
          )),
    );
  }
}
