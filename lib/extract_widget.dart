import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ExtractWidget extends StatelessWidget {
  ExtractWidget({super.key});
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Tile"),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ChatItem(
                  imageUrl: "https://picsum.photos/id/$index/200/300",
                  subtitle: faker.lorem.sentence(),
                  title: faker.person.name());
            }),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {super.key,
      required this.imageUrl,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: const Text("10:00 PM"),
    );
  }
}
