import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Tile"),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Sandhika Rahardi"),
              subtitle: Text(
                "This is subtitle okay... asdadadasdkjdksjflakjfhsjfhasjfhaslkdjbadhasdkhaskdjahsdasdadadasdkjdksjflakjfhsjfhasjfhaslkdjbadhasdkhaskdjahsdasdadadasdkjdksjflakjfhsjfhasjfhaslkdjbadhasdkhaskdjahsdasdadadasdkjdksjflakjfhsjfhasjfhaslkdjbadhasdkhaskdjahsd",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Sandhika Rahardi"),
              subtitle: Text(
                "This is subtitle okay...",
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Sandhika Rahardi"),
              subtitle: Text(
                "This is subtitle okay...",
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Sandhika Rahardi"),
              subtitle: Text(
                "This is subtitle okay...",
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Sandhika Rahardi"),
              subtitle: Text(
                "This is subtitle okay...",
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
