import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({super.key});

  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Medicine'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              padding:
                  const EdgeInsets.all(16.0), // Margen alrededor del contenido
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Ajusta el tamaño del Column a su contenido
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Medicine Name',
                      icon: Icon(Icons.medication),
                      labelStyle: TextStyle(fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaciado entre TextField
                  const Row(
                    mainAxisSize: MainAxisSize
                        .min, // Ajusta el tamaño del Row a su contenido
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Hour',
                              icon: Icon(Icons.timer),
                              labelStyle: TextStyle(fontSize: 28)),
                        ),
                      ),
                      SizedBox(width: 16.0), // Espaciado entre TextField
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Color',
                              icon: Icon(Icons.color_lens),
                              labelStyle: TextStyle(fontSize: 28)),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(32),
                      child: ElevatedButton.icon(
                        label: const Text(
                          "Add",
                          style: TextStyle(fontSize: 28),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('¡Successfuly Added Medicine!'),
                            duration:
                                Duration(seconds: 2), // Duración del SnackBar
                          ));
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(280, 80),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
