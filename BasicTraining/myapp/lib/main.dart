import 'package:flutter/material.dart';

void Main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold is a visual layout structure
        appBar: AppBar(
            backgroundColor: Colors.green, title: const Text("Flutter App")),
      ),
    );
  }
}
