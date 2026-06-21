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

      elevation: 2,

      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Padding(
        padding:
            const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Row(
              children: [

                Icon(
                  icon,
                  size: 30,
                ),

                const SizedBox(width: 10),

                Text(
                  title,
                  style:
                      const TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: value,
              minHeight: 12,
              borderRadius:
                  BorderRadius.circular(
                      10),
            ),

            const SizedBox(height: 10),

            Text(progress),
          ],
        ),
      ),
    );
  }
}