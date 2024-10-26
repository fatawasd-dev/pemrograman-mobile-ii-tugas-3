import 'package:flutter/material.dart';

class TextFieldControlWidget extends StatefulWidget {
  const TextFieldControlWidget({super.key});

  @override
  State<TextFieldControlWidget> createState() => _TextFieldControlWidgetState();
}

class _TextFieldControlWidgetState extends State<TextFieldControlWidget> {
  final TextEditingController myController = TextEditingController();

  String hasil = "HASIL INPUT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Fitur TextField"),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: myController,
                    onChanged: (value) {
                      print('ONCHANGE');
                    },
                    onSubmitted: (value) {
                      setState(() {
                        hasil = value; 
                      });
                    },
                    onEditingComplete: () {
                      print('EDIT SUCCESS');
                      print(myController.text);
                    },
                  ),
                  Text(hasil),
                ],
              ),
            ),
          )),
    );
  }
}
