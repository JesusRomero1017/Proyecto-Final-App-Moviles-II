import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {

  final String recommendation;

  const RecommendationCard({
    super.key,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.health_and_safety,
          color: Colors.green,
        ),
        title: const Text("Recomendación"),
        subtitle: Text(recommendation),
      ),
    );
  }
}