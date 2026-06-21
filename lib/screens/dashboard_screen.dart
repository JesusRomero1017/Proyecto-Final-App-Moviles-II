import 'package:flutter/material.dart';

import '../components/activity_card.dart';
import '../components/health_summary_card.dart';
import '../components/stat_card.dart';
import '../styles/app_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
          AppStyles.backgroundColor,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const Text(
                "Hola Jesús 👋",
                style: AppStyles.titleStyle,
              ),

              const Text(
                "Has completado el 84% de tu meta diaria",
                style:
                    AppStyles.subtitleStyle,
              ),

              const SizedBox(height: 20),

              const HealthSummaryCard(),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(25),
                ),

                child: const Column(

                  children: [

                    Text(
                      "Meta Diaria",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "8,421 / 10,000 pasos",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),

                    SizedBox(height: 15),

                    LinearProgressIndicator(
                      value: 0.84,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(),

                crossAxisSpacing: 15,
                mainAxisSpacing: 15,

                children: const [

                  StatCard(
                    title: "Pasos",
                    value: "8,421",
                    icon: Icons.directions_walk,
                    color: Colors.green,
                  ),

                  StatCard(
                    title: "Calorías",
                    value: "425",
                    icon: Icons.local_fire_department,
                    color: Colors.orange,
                  ),

                  StatCard(
                    title: "Distancia",
                    value: "5.8 km",
                    icon: Icons.route,
                    color: Colors.blue,
                  ),

                  StatCard(
                    title: "Agua",
                    value: "2.3L",
                    icon: Icons.water_drop,
                    color: Colors.cyan,
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Actividad Reciente",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const ActivityCard(
                icon: Icons.directions_run,
                title: "Correr",
                duration: "45 min",
                calories: "320 kcal",
              ),

              const ActivityCard(
                icon: Icons.directions_bike,
                title: "Ciclismo",
                duration: "30 min",
                calories: "250 kcal",
              ),

              const ActivityCard(
                icon:
                    Icons.sports_gymnastics,
                title: "Gimnasio",
                duration: "60 min",
                calories: "450 kcal",
              ),

              const SizedBox(height: 20),

              Container(
                padding:
                    const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.green
                      .withValues(alpha: 0.1),
                  borderRadius:
                      BorderRadius.circular(20),
                ),

                child: const Row(
                  children: [

                    Icon(
                      Icons.emoji_events,
                      color: Colors.orange,
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        "Estás más activo que el 75% de los usuarios esta semana.",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}