import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Fitur TextField"),
          ),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                autocorrect: false,
                autofocus: false,
                enableSuggestions: true,
                enableInteractiveSelection: true,
                keyboardType: TextInputType.phone,
                readOnly: true,
              ),
            ),
          )),
    );
  }
}
