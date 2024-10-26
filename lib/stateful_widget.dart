import 'package:flutter/material.dart';

class StatefulsWidget extends StatefulWidget {
  StatefulsWidget({super.key});

  @override
  State<StatefulsWidget> createState() => _StatefulsWidgetState();
}

class _StatefulsWidgetState extends State<StatefulsWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Dynamic Apps"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 20 + double.parse(counter.toString()),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (counter != 1) {
                            counter--;
                          }
                        });
                        print(counter);
                      },
                      child: const Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                        print(counter);
                      },
                      child: const Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ));
  }
}
