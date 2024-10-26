import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  DismissibleWidget({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Dismissible"),
          ),
          body: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Dismissible(
                    key: Key(index.toString()),
                    // direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      print("DISMISSED");
                      if (direction == DismissDirection.endToStart) {
                        print("END TO START");
                      } else {
                        print("START TO END");
                      }
                    },
                    confirmDismiss: (direction) {
                      return showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: const Text("Confirm"),
                          content: const Text("Are you sure to delete this item ?"),
                          actions: [
                      ElevatedButton(
                          onPressed: () {
                            print("Klik No");
                            Navigator.of(context).pop(false);
                          },
                          child: const Text("No")),
                      ElevatedButton(
                          onPressed: () {
                            print("Klik Yes");
                            Navigator.of(context).pop(true);
                          },
                          child: const Text("Yes")),
                          ],
                        );
                      }); 
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.delete, size: 25,),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Center(
                          child: Text("${index + 1}"),
                        ),
                      ),
                      title: Text(faker.person.name()),
                      subtitle: Text(faker.lorem.sentence()),
                    ));
              })),
    );
  }
}
