import 'package:flutter/material.dart';
import '../services/weather_service.dart';

class WeatherRecommendationsScreen extends StatefulWidget {
  const WeatherRecommendationsScreen({super.key});

  @override
  State<WeatherRecommendationsScreen> createState() =>
      _WeatherRecommendationsScreenState();
}

class _WeatherRecommendationsScreenState
    extends State<WeatherRecommendationsScreen> {

  final WeatherService weatherService =
      WeatherService();

  Map<String, dynamic>? weatherData;

  @override
  void initState() {
    super.initState();
    loadWeather();
  }

  Future<void> loadWeather() async {

    final data =
        await weatherService.getWeather();

    setState(() {
      weatherData = data;
    });
  }

  String getRecommendation(
    String weather,
  ) {

    switch (weather.toLowerCase()) {

      case 'clear':
        return "Excelente día para caminar o correr al aire libre.";

      case 'clouds':
        return "Perfecto para una caminata ligera.";

      case 'rain':
        return "Se recomienda realizar ejercicio en interiores.";

      case 'thunderstorm':
        return "Evita actividades al aire libre.";

      default:
        return "Mantente hidratado y activo.";
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Clima y Salud"),
      ),

      body: weatherData == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(20),

              child: Column(

                children: [

                  Card(
                    elevation: 4,

                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(

                        children: [

                          Text(
                            weatherData!["name"],
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 15),

                          Text(
                            "${weatherData!["main"]["temp"]}°C",
                            style: const TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Text(
                            weatherData!["weather"][0]["description"],
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Card(
                    color: Colors.green.shade50,

                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(

                        children: [

                          const Icon(
                            Icons.health_and_safety,
                            size: 50,
                            color: Colors.green,
                          ),

                          const SizedBox(height: 15),

                          Text(
                            getRecommendation(
                              weatherData!["weather"][0]["main"],
                            ),

                            textAlign: TextAlign.center,

                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}