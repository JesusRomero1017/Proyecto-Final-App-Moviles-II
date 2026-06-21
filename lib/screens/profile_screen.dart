import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Mi Perfil"),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            // FOTO Y NOMBRE

            Container(

              width: double.infinity,

              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(

                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF00C896),
                    Color(0xFF14D9C4),
                  ],
                ),

                borderRadius:
                    BorderRadius.circular(25),
              ),

              child: const Column(

                children: [

                  CircleAvatar(
                    radius: 50,
                    backgroundColor:
                        Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.green,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Jesús Romero",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Miembro desde Enero 2020",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // INFORMACIÓN PERSONAL

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Información Personal",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            buildInfoCard(
              Icons.cake,
              "Edad",
              "26 años",
            ),

            buildInfoCard(
              Icons.monitor_weight,
              "Peso",
              "60 kg",
            ),

            buildInfoCard(
              Icons.height,
              "Estatura",
              "1.70 m",
            ),

            buildInfoCard(
              Icons.favorite,
              "Frecuencia Cardíaca",
              "78 BPM",
            ),

            const SizedBox(height: 20),

            // IMC

            Container(

              padding:
                  const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color:
                    Colors.orange.shade50,
                borderRadius:
                    BorderRadius.circular(
                        20),
              ),

              child: const Column(

                children: [

                  Text(
                    "Índice de Masa Corporal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "20.76",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Chip(
                    label: Text(
                      "Peso saludable",
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Rango saludable: 18.5 - 24.9",
                    textAlign:
                        TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // METAS

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Metas Configuradas",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            buildInfoCard(
              Icons.directions_walk,
              "Meta de Pasos",
              "10,000 pasos",
            ),

            buildInfoCard(
              Icons.water_drop,
              "Meta de Agua",
              "3 Litros",
            ),

            buildInfoCard(
              Icons.local_fire_department,
              "Meta de Calorías",
              "600 kcal",
            ),

            buildInfoCard(
              Icons.timer,
              "Tiempo Activo",
              "90 min",
            ),

            const SizedBox(height: 25),

            // ESTADÍSTICAS

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Resumen General",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            GridView.count(

              crossAxisCount: 2,

              shrinkWrap: true,

              physics:
                  const NeverScrollableScrollPhysics(),

              crossAxisSpacing: 12,
              mainAxisSpacing: 12,

              children: const [

                StatBox(
                  title: "Pasos Totales",
                  value: "152K",
                  icon:
                      Icons.directions_walk,
                ),

                StatBox(
                  title: "Ejercicios",
                  value: "48",
                  icon:
                      Icons.fitness_center,
                ),

                StatBox(
                  title: "Calorías",
                  value: "12.8K",
                  icon: Icons
                      .local_fire_department,
                ),

                StatBox(
                  title: "Metas",
                  value: "32",
                  icon: Icons.flag,
                ),
              ],
            ),

            const SizedBox(height: 25),

            // TARJETA PREMIUM

            Container(

              width: double.infinity,

              padding:
                  const EdgeInsets.all(20),

              decoration: BoxDecoration(

                gradient:
                    const LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.indigo,
                  ],
                ),

                borderRadius:
                    BorderRadius.circular(
                        20),
              ),

              child: const Column(

                children: [

                  Icon(
                    Icons.workspace_premium,
                    color: Colors.amber,
                    size: 50,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Usuario Premium",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Acceso a estadísticas avanzadas y planes personalizados.",
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton.icon(

                onPressed: () {},

                icon:
                    const Icon(Icons.edit),

                label: const Text(
                  "Editar Perfil",
                ),

                style:
                    ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget buildInfoCard(
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
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class StatBox extends StatelessWidget {

  final String title;
  final String value;
  final IconData icon;

  const StatBox({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withAlpha(13),
            blurRadius: 5,
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            color: Colors.green,
            size: 35,
          ),

          const SizedBox(height: 10),

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            textAlign:
                TextAlign.center,
          ),
        ],
      ),
    );
  }
}