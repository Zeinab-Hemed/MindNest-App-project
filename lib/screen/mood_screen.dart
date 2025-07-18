import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MoodScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MoodScreenState createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  String? _mood;

  void _submitMood(String mood) {
    setState(() => _mood = mood);
    // Store mood in Firestore
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("How are you feeling?")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tap a face to track your mood"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: ["😃", "🙂", "😐", "😔", "😢"]
                .map((emoji) => GestureDetector(
                      onTap: () => _submitMood(emoji),
                      child: Text(emoji, style: TextStyle(fontSize: 40)),
                    ))
                .toList(),
          ),
          if (_mood != null) Text("Your mood: $_mood"),
        ],
      ),
    );
  }
}
