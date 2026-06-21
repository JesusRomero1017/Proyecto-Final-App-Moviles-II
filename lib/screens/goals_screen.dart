import 'package:flutter/material.dart';
import '../components/goal_card.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Metas Personales"),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(20),

              decoration: BoxDecoration(
                gradient:
                    const LinearGradient(
                  colors: [
                    Color(0xFF00C896),
                    Color(0xFF14D9C4),
                  ],
                ),
                borderRadius:
                    BorderRadius.circular(
                        20),
              ),

              child: const Column(
                children: [

                  Text(
                    "Objetivos de Hoy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "75% completado",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const GoalCard(
              title: "Pasos",
              progress:
                  "8,421 / 10,000 pasos",
              value: 0.84,
              icon:
                  Icons.directions_walk,
            ),

            const SizedBox(height: 15),

            const GoalCard(
              title: "Consumo de Agua",
              progress: "2.3 / 3 L",
              value: 0.76,
              icon: Icons.water_drop,
            ),

            const SizedBox(height: 15),

            const GoalCard(
              title: "Calorías",
              progress:
                  "425 / 600 kcal",
              value: 0.70,
              icon: Icons
                  .local_fire_department,
            ),

            const SizedBox(height: 15),

            const GoalCard(
              title: "Tiempo Activo",
              progress:
                  "65 / 90 min",
              value: 0.72,
              icon: Icons.timer,
            ),

            const SizedBox(height: 15),

            const GoalCard(
              title:
                  "Objetivo de Peso",
              progress:
                  "60 kg → 65 kg",
              value: 0.40,
              icon:
                  Icons.monitor_weight,
            ),

            const SizedBox(height: 25),

            Card(
              color: Colors.green
                  .withValues(alpha: 0.1),

              child: const ListTile(
                leading: Icon(
                  Icons.celebration,
                  color: Colors.orange,
                ),

                title: Text(
                  "¡Vas muy bien!"
                ),

                subtitle: Text(
                  "Te faltan 1,579 pasos para completar tu meta diaria.",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}