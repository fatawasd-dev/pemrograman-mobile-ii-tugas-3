import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatWidget extends StatelessWidget {
  const DateFormatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Date Format"),
          ),
          body: Center(
            child: Text(
              DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          )),
    );
  }
}
