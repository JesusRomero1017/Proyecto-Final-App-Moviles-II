import 'package:flutter/material.dart';
import 'exercise_detail_screen.dart';

class ExerciseHistoryScreen
    extends StatelessWidget {

  const ExerciseHistoryScreen(
      {super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Historial de Ejercicios"),
      ),

      body: Column(

        children: [

          const SizedBox(height: 15),

          const SingleChildScrollView(
            scrollDirection:
                Axis.horizontal,

            child: Row(
              children: [

                SizedBox(width: 15),

                Chip(
                  label: Text("Todos"),
                ),

                SizedBox(width: 10),

                Chip(
                  label: Text("Cardio"),
                ),

                SizedBox(width: 10),

                Chip(
                  label: Text("Fuerza"),
                ),

                SizedBox(width: 10),

                Chip(
                  label: Text("Caminatas"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Expanded(

            child: ListView(

              children: [

                buildExercise(
                  context,
                  Icons.directions_run,
                  "Correr",
                  "45 min",
                  "320 kcal",
                  "6 km",
                ),

                buildExercise(
                  context,
                  Icons.directions_bike,
                  "Ciclismo",
                  "30 min",
                  "250 kcal",
                  "12 km",
                ),

                buildExercise(
                  context,
                  Icons.sports_gymnastics,
                  "Gimnasio",
                  "60 min",
                  "450 kcal",
                  "N/A",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExercise(
    BuildContext context,
    IconData icon,
    String title,
    String duration,
    String calories,
    String distance,
  ) {

    return Card(

      margin:
          const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 6,
      ),

      child: ListTile(

        leading: CircleAvatar(
          radius: 25,
          child: Icon(icon),
        ),

        title: Text(title),

        subtitle: Text(
          "Duración: $duration\nFecha: 12/06/2026",
        ),

        trailing: Text(calories),

        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  ExerciseDetailScreen(
                title: title,
                duration: duration,
                calories: calories,
                distance: distance,
                icon: icon,
              ),
            ),
          );
        },
      ),
    );
  }
}