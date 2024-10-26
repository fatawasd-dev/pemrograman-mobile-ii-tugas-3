import 'package:flutter/material.dart';

class MappingListWidget extends StatelessWidget {
  MappingListWidget({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Sandhika",
      "Age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Yusuf",
      "Age": 25,
      "favColor": ["White", "Red", "Green"]
    },
    {
      "Name": "Sandhika",
      "Age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data["favColor"];
            return Card(
              margin: const EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age'].toString()}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: myFavColor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 8),
                            padding: const EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList())),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
