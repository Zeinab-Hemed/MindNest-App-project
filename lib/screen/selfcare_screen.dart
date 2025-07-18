import 'package:flutter/material.dart';

class SelfCareScreen extends StatelessWidget {
  const SelfCareScreen({super.key});

  final List<String> tips = const [
    "Take deep breaths",
    "Write in a journal",
    "Go for a walk",
    "Meditate for 10 minutes",
    "Drink water",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Self-Care Tips")),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(tips[index]),
        ),
      ),
    );
  }
}
