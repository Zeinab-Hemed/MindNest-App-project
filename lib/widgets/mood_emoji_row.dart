import 'package:flutter/material.dart';

class MoodEmojiRow extends StatelessWidget {
  final Function(String) onMoodSelected;

  const MoodEmojiRow({super.key, required this.onMoodSelected});

  final List<String> emojis = const ['😃', '🙂', '😐', '😔', '😢'];
  final List<String> labels = const ['Happy', 'Okay', 'Neutral', 'Sad', 'Crying'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'How are you feeling?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(emojis.length, (index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => onMoodSelected(emojis[index]),
                  child: Text(
                    emojis[index],
                    style: const TextStyle(fontSize: 36),
                  ),
                ),
                const SizedBox(height: 4),
                Text(labels[index], style: const TextStyle(fontSize: 12)),
              ],
            );
          }),
        ),
      ],
    );
  }
}

