import 'package:cloud_firestore/cloud_firestore.dart';

class ChatMessage {
  final String text;
  final bool fromUser;
  final DateTime timestamp;

  ChatMessage({required this.text, required this.fromUser, required this.timestamp});

  factory ChatMessage.fromMap(Map<String, dynamic> data) {
    return ChatMessage(
      text: data['text'] ?? '',
      fromUser: data['fromUser'] ?? true,
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'fromUser': fromUser,
      'timestamp': timestamp,
    };
  }
}
