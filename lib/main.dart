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
                      Text("eingabe vom Benutzer: $inputValue"),
                      const SizedBox(height: standartPadding),
                      TextField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                        onChanged: (String newValue) {
                          print("Der neue Wert ist: $newValue");
                          setState(() => inputValue = newValue);
                        },
                      )
                    ]))),
      ),
    );
  }
}
