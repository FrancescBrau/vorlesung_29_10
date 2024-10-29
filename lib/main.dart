import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const double standartPadding = 32;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String inputValue = "Noch nichts";
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              left: standartPadding, right: standartPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.text),
              const SizedBox(height: standartPadding),
              TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  print(controller.text);
                  setState(() {});
                },
                child: const Text("Text Setzen"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
