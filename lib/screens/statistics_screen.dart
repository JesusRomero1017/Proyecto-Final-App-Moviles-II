import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Estadísticas Semanales"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Card(
              child: ListTile(
                title: Text("Pasos Semanales"),
                subtitle: Text("58,420"),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Calorías Quemadas"),
                subtitle: Text("3,150"),
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Metas Cumplidas"),
                subtitle: Text("6 de 7"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}