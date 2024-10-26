import 'package:flutter/material.dart';

class TextFieldDecorationWidget extends StatelessWidget {
  const TextFieldDecorationWidget({super.key});

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
              child: TextField(
                autocorrect: false,
                showCursor: true,
                cursorColor: Colors.red,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                textCapitalization: TextCapitalization.none,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(Icons.person, size: 35),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  // prefixText: "Name: ",
                  hintText: "Please input your name..",
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 20),
                  labelText: "Full Name",
                  labelStyle: const TextStyle(color: Colors.black, fontSize: 20),
                  prefixIcon: const Icon(Icons.add_a_photo),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      return;
                    },
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
