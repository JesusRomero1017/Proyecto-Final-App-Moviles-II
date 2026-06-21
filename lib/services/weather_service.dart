import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {

  final String apiKey = "YOUR_API_KEY";

  Future<Map<String, dynamic>> getWeather() async {

    const city = "Tijuana";

    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric&lang=es";

    final response = await http.get(
      Uri.parse(url),
    );

    return jsonDecode(response.body);
  }
}