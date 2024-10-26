import 'package:flutter/material.dart';

class VisibleInvisibleWidget extends StatelessWidget {
  const VisibleInvisibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column"),
        ),
        body: Stack(
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.green
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red
            ),
          ],
        ),
      ),
    );
  }
}