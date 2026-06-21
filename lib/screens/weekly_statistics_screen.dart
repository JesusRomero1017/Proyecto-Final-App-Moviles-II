import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WeeklyStatisticsScreen extends StatelessWidget {
  const WeeklyStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Estadísticas Semanales"),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Container(
              padding:
                  const EdgeInsets.all(20),

              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20),

                gradient:
                    const LinearGradient(
                  colors: [
                    Color(0xFF00C896),
                    Color(0xFF14D9C4),
                  ],
                ),
              ),

              child: const Column(
                children: [

                  Text(
                    "Resumen Semanal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "61,800 pasos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Meta cumplida 6 de 7 días",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Pasos por Día",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              height: 250,

              child: BarChart(
                BarChartData(
                  borderData:
                      FlBorderData(show: false),

                  barGroups: [

                    createBar(0, 7000),
                    createBar(1, 8500),
                    createBar(2, 6500),
                    createBar(3, 9200),
                    createBar(4, 10500),
                    createBar(5, 12000),
                    createBar(6, 8100),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Indicadores",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            buildStatCard(
              Icons.local_fire_department,
              "Calorías Quemadas",
              "3,250 kcal",
            ),

            buildStatCard(
              Icons.route,
              "Distancia Recorrida",
              "42 km",
            ),

            buildStatCard(
              Icons.show_chart,
              "Promedio Diario",
              "8,828 pasos",
            ),

            buildStatCard(
              Icons.flag,
              "Metas Cumplidas",
              "6 de 7",
            ),

            const SizedBox(height: 25),

            const Text(
              "Comparación",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.trending_up,
                  color: Colors.green,
                ),
                title: const Text(
                  "Semana Actual",
                ),
                subtitle: const Text(
                  "61,800 pasos",
                ),
                trailing: Container(
                  padding:
                      const EdgeInsets.all(8),

                  decoration:
                      BoxDecoration(
                    color: Colors.green
                        .withValues(alpha: 0.1),
                    borderRadius:
                        BorderRadius.circular(
                            10),
                  ),

                  child: const Text(
                    "+13.8%",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Logros",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            achievement(
              "🏆",
              "10,000 pasos en un día",
            ),

            achievement(
              "🔥",
              "3,000 calorías quemadas",
            ),

            achievement(
              "⭐",
              "5 días consecutivos activos",
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildStatCard(
    IconData icon,
    String title,
    String value,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static Widget achievement(
    String emoji,
    String text,
  ) {
    return Card(
      child: ListTile(
        leading: Text(
          emoji,
          style:
              const TextStyle(fontSize: 24),
        ),
        title: Text(text),
      ),
    );
  }

  static BarChartGroupData createBar(
      int x,
      double y) {

    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 18,
          borderRadius:
              BorderRadius.circular(5),
        ),
      ],
    );
  }
}