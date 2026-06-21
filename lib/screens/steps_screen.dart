import 'package:flutter/material.dart';
import '../services/fitness_service.dart';
import 'package:pedometer/pedometer.dart';

class StepsScreen extends StatefulWidget {
  const StepsScreen({super.key});

  @override
  State<StepsScreen> createState() => _StepsScreenState();
}

class _StepsScreenState extends State<StepsScreen> {

  final FitnessService fitnessService =
      FitnessService();

  int steps = 0;

  @override
  void initState() {
    super.initState();

    fitnessService
        .getStepStream()
        .listen((StepCount event) {

      setState(() {
        steps = event.steps;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    double calories =
        steps * 0.04;

    return Scaffold(

      appBar: AppBar(
        title: const Text("Contador de Pasos"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            const Icon(
              Icons.directions_walk,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            Text(
              "$steps",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Pasos",
              style: TextStyle(
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "${calories.toStringAsFixed(2)} kcal",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}