import 'package:flutter/material.dart';
import 'package:medicine_remainder/model/provider_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({super.key});

  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    TextEditingController controllerHour = TextEditingController();
    TextEditingController controllerColor = TextEditingController();

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
                  TextField(
                    controller: controllerName,
                    decoration: const InputDecoration(
                      labelText: 'Medicine Name',
                      icon: Icon(Icons.medication),
                      labelStyle: TextStyle(fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaciado entre TextField
                  Row(
                    mainAxisSize: MainAxisSize
                        .min, // Ajusta el tamaño del Row a su contenido
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: controllerHour,
                          decoration: const InputDecoration(
                              labelText: 'Hour',
                              icon: Icon(Icons.timer),
                              labelStyle: TextStyle(fontSize: 28)),
                        ),
                      ),
                      const SizedBox(width: 16.0), // Espaciado entre TextField
                      Expanded(
                        child: TextField(
                          controller: controllerColor,
                          decoration: const InputDecoration(
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
                          if (controllerName.text.isEmpty ||
                              controllerHour.text.isEmpty ||
                              controllerColor.text.isEmpty) {
                            IconSnackBar.show(context,
                                snackBarType: SnackBarType.fail,
                                label: '¡Please fill all fields!');
                          } else {
                            Provider.of<TextProvider>(context, listen: false)
                                .addText(controllerName.text,
                                    controllerHour.text, controllerColor.text);
                            controllerName.clear();
                            controllerHour.clear();
                            controllerColor.clear();
                            IconSnackBar.show(
                                duration: const Duration(seconds: 2),
                                context,
                                snackBarType: SnackBarType.success,
                                label: '¡Successfuly Added Medicine!');
                            Navigator.pop(context);
                          }
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
