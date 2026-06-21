import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {

  final String title;
  final String progress;
  final double value;
  final IconData icon;

  const GoalCard({
    super.key,
    required this.title,
    required this.progress,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(
              children: [

                Icon(icon),

                const SizedBox(width: 10),

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: value,
              minHeight: 10,
              borderRadius: BorderRadius.circular(20),
            ),

            const SizedBox(height: 10),

            Text(progress),
          ],
        ),
      ),
    );
  }
}