import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  final List<Color> myColor = [
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.red,
  ];

  final List<Widget> myList = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(fontSize: 20 + double.parse(index.toString())),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column"),
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
