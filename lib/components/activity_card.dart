import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final String duration;
  final String calories;

  const ActivityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.duration,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 3,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: ListTile(

        leading: CircleAvatar(
          radius: 25,
          child: Icon(icon),
        ),

        title: Text(title),

        subtitle: Text(duration),

        trailing: Text(
          calories,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}