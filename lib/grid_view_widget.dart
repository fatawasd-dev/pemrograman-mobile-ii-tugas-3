import 'dart:math';

import 'package:flutter/material.dart';

class GrideViewWidget extends StatelessWidget {
  GrideViewWidget({super.key});

  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Grid View"),
          ),
          // body: GridView(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       crossAxisSpacing: 20,
          //       mainAxisSpacing: 10,
          //       childAspectRatio: 4 / 3,
          //     ),
          //     children: myList),
          body: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(10),
            children: myList,
          ),
        ));
  }
}
