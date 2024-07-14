import 'package:flutter/material.dart';
import 'package:medicine_remainder/model/provider_list.dart';
import 'package:medicine_remainder/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TextProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine Remainder',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          foregroundColor: Colors.white,
          title: const Text(
            'Medicine Remainder',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
