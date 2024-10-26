import 'package:flutter/material.dart';

class WidgetDasar extends StatelessWidget {
  const WidgetDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff545454),
        appBar: AppBar(
          title: const Text(" My Apps"),
        ),
        body: const Center(
          child: Text("HALO"),
        ),
      ),
    );
  }
}