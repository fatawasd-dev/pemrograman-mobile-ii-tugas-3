import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,
          title: Container(
            height: 35,
            color: Colors.red,
          ),
          actions: [
            Container(
              width: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(200),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black,
              )),
          flexibleSpace: Container(
            height: 50,
            color: Colors.green,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
