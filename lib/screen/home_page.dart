import 'package:flutter/material.dart';
import 'package:medicine_remainder/screen/add_medicine.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddMedicine(),
                  ),
                );
              },
              child: const Text("Agregar")),
          const SizedBox(
            height: 20,
          ),
          const Text("Actividad")
        ],
      ),
    );
  }
}
