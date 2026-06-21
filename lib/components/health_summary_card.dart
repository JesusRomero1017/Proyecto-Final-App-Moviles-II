import 'package:flutter/material.dart';

class HealthSummaryCard extends StatelessWidget {
  const HealthSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),

        gradient: const LinearGradient(
          colors: [
            Color(0xFF00C896),
            Color(0xFF14D9C4),
          ],
        ),
      ),

      child: const Column(
        children: [

          Text(
            "RESUMEN DE SALUD",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround,

            children: [

              Column(
                children: [
                  Icon(Icons.favorite,
                      color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    "78 BPM",
                    style: TextStyle(
                        color: Colors.white),
                  )
                ],
              ),

              Column(
                children: [
                  Icon(Icons.bedtime,
                      color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    "7h 25m",
                    style: TextStyle(
                        color: Colors.white),
                  )
                ],
              ),

              Column(
                children: [
                  Icon(Icons.water_drop,
                      color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    "2.3L",
                    style: TextStyle(
                        color: Colors.white),
                  )
                ],
              ),

              Column(
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "425",
                    style: TextStyle(
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}