import 'package:flutter/material.dart';
import 'package:medicine_remainder/screen/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine Remainder',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Our Medicine'),
        ),
        body: const HomePage(),
      ),
    );
  }
}
