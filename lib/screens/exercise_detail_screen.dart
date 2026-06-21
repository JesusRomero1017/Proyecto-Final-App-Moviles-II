import 'package:flutter/material.dart';

class ExerciseDetailScreen
    extends StatelessWidget {

  final String title;
  final String duration;
  final String calories;
  final String distance;
  final IconData icon;

  const ExerciseDetailScreen({
    super.key,
    required this.title,
    required this.duration,
    required this.calories,
    required this.distance,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            CircleAvatar(
              radius: 60,
              child: Icon(
                icon,
                size: 60,
              ),
            ),

            const SizedBox(height: 25),

            buildInfo(
                Icons.timer,
                "Duración",
                duration),

            buildInfo(
                Icons.route,
                "Distancia",
                distance),

            buildInfo(
                Icons.local_fire_department,
                "Calorías",
                calories),

            buildInfo(
                Icons.speed,
                "Velocidad Promedio",
                "8 km/h"),

            buildInfo(
                Icons.star,
                "Nivel",
                "Intermedio"),

            buildInfo(
                Icons.calendar_month,
                "Fecha",
                "12/06/2026"),
          ],
        ),
      ),
    );
  }

  Widget buildInfo(
    IconData icon,
    String title,
    String value,
  ) {

    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}