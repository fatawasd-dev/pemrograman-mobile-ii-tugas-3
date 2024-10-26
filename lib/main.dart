import 'package:flutter/material.dart';
import 'package:tugas_3/app_bar_widget.dart';
import 'package:tugas_3/date_format_widget.dart';
import 'package:tugas_3/dialog_widget.dart';
import 'package:tugas_3/dismissible_widget.dart';
import 'package:tugas_3/extract_widget.dart';
import 'package:tugas_3/grid_view_widget.dart';
import 'package:tugas_3/image_widget.dart';
import 'package:tugas_3/list_tile_widget.dart';
import 'package:tugas_3/list_view.dart';
import 'package:tugas_3/mapping_list_widget.dart';
import 'package:tugas_3/stateful_widget.dart';
import 'package:tugas_3/tab_bar_widget.dart';
import 'package:tugas_3/text_field_control_widget.dart';
import 'package:tugas_3/text_field_decoration_widget.dart';
import 'package:tugas_3/text_field_widget.dart';
import 'package:tugas_3/text_widget.dart';
import 'package:tugas_3/visible_invisible_widget.dart';
import 'package:tugas_3/widget_dasar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Navigator'),
      ),
      body: SingleChildScrollView(
        // Membuat konten dapat di-scroll
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetDasar(),
                    ),
                  );
                },
                child: const Text('Go to WidgetDasar'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextWidget(),
                    ),
                  );
                },
                child: const Text('Go to TextWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VisibleInvisibleWidget(),
                    ),
                  );
                },
                child: const Text('Go to VisibleInvisibleWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewWidget(),
                    ),
                  );
                },
                child: const Text('Go to ListView'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListTileWidget(),
                    ),
                  );
                },
                child: const Text('Go to ListTile'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageWidget(),
                    ),
                  );
                },
                child: const Text('Go to ImageWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExtractWidget(),
                    ),
                  );
                },
                child: const Text('Go to ExtractWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatefulsWidget(),
                    ),
                  );
                },
                child: const Text('Go to StatefulWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MappingListWidget(),
                    ),
                  );
                },
                child: const Text('Go to MappingListWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DateFormatWidget(),
                    ),
                  );
                },
                child: const Text('Go to DateFormatWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppBarWidget(),
                    ),
                  );
                },
                child: const Text('Go to AppBarWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabBarWidget(),
                    ),
                  );
                },
                child: const Text('Go to TabBarWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextFieldWidget(),
                    ),
                  );
                },
                child: const Text('Go to TextFieldWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextFieldDecorationWidget(),
                    ),
                  );
                },
                child: const Text('Go to TextFieldDecorationWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextFieldControlWidget(),
                    ),
                  );
                },
                child: const Text('Go to TextFieldControlWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GrideViewWidget(),
                    ),
                  );
                },
                child: const Text('Go to GrideViewWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DialogsWidget(),
                    ),
                  );
                },
                child: const Text('Go to DialogsWidget'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DismissibleWidget(),
                    ),
                  );
                },
                child: const Text('Go to DismissibleWidget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
