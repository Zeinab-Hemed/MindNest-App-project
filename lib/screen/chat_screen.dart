import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../services/chat_service.dart';
import '../widgets/message_input.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = AuthService().currentUser?.uid;
    if (userId == null) return const Center(child: Text("Not signed in"));

    return Scaffold(
      appBar: AppBar(title: const Text("Support Chat")),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: ChatService().getMessages(userId),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final messages = snapshot.data!.docs;
                return ListView(
                  children: messages.map((doc) {
                    final data = doc.data() as Map<String, dynamic>;
                    return ListTile(
                      title: Text(data['text'] ?? ''),
                      subtitle: Text(data['fromUser'] == true ? 'You' : 'Bot'),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          MessageInput(userId: userId),
        ],
      ),
    );
  }
}

