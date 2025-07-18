import 'package:cloud_firestore/cloud_firestore.dart';

class MoodEntry {
  final String mood;
  final DateTime timestamp;

  MoodEntry({required this.mood, required this.timestamp});

  factory MoodEntry.fromMap(Map<String, dynamic> data) {
    return MoodEntry(
      mood: data['mood'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mood': mood,
      'timestamp': timestamp,
    };
  }
}
