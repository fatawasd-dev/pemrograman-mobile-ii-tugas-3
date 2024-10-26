import 'package:flutter/material.dart';

class DialogsWidget extends StatefulWidget {
  const DialogsWidget({super.key});

  @override
  State<DialogsWidget> createState() => _DialogsWidgetState();
}

class _DialogsWidgetState extends State<DialogsWidget> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog"),
        ),
        body: Center(
            child: Text(
          data,
          style: const TextStyle(
            fontSize: 35,
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Telah diklik");
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Confirm"),
                    content: const Text("Are you sure to delete this item ?"),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            print("Klik No");
                            setState(() {
                              data = "False";
                            });
                            Navigator.of(context).pop(false);
                          },
                          child: const Text("No")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              data = "True";
                            });
                            Navigator.of(context).pop(true);
                          },
                          child: const Text("Yes")),
                    ],
                  );
                }).then((value) => print(value));
          },
          child: const Icon(Icons.delete),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
