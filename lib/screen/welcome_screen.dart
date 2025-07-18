import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to MindNest')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/mood'),
              child: const Text("Log Mood"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/chat'),
              child: const Text("Chat Support"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/selfcare'),
              child: const Text("Self-Care Tips"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/library'),
              child: const Text("Mental Health Library"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/sos'),
              child: const Text("Emergency (SOS)"),
            ),
          ],
        ),
      ),
    );
  }
}
