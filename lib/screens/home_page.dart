import 'package:flutter/material.dart';
import 'package:medicine_remainder/model/provider_list.dart';
import 'package:medicine_remainder/screens/add_medicine.dart';
import 'package:provider/provider.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 70),
                    backgroundColor: Colors.green,
                  ),
                  label: const Text("Add Pills",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddMedicine()));
                  },
                  icon: const Icon(
                    Icons.medical_services,
                    color: Colors.white,
                    size: 34,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 360,
              child: Text(
                "Actividad",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: Consumer<TextProvider>(
                builder: (context, textProvider, child) {
                  if (textProvider.textoName.isEmpty) {
                    return const Center(
                      child: Text("No medicine registered"),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: textProvider.textoName.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(textProvider.textoName[index]),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(textProvider.textoHour[index]),
                                Text(textProvider.textoColor[index]),
                              ],
                            ),
                            leading: const Icon(Icons.medication),
                          );
                        });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
