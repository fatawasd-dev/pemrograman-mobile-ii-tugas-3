import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({super.key});

  final List<Tab> myTab = [
    const Tab(text: "Tab 1", icon: Icon(Icons.add_a_photo)),
    const Tab(text: "Tab 2", icon: Icon(Icons.ac_unit_outlined)),
    const Tab(text: "Tab 3", icon: Icon(Icons.access_alarm_rounded)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: myTab.length,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("My Apps"),
              bottom: TabBar(
                indicator: const BoxDecoration(
                  color: Colors.amber,
                  border:
                      Border(bottom: BorderSide(color: Colors.black, width: 5)),
                ),
                tabs: myTab,
              ),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: Text(
                    "Tab 1",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Center(
                  child: Text(
                    "Tab 2",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Center(
                  child: Text(
                    "Tab 3",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
