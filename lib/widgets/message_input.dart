import 'package:flutter/material.dart';
import '../services/chat_service.dart';

class MessageInput extends StatefulWidget {
  final String userId;
  const MessageInput({super.key, required this.userId});

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _controller = TextEditingController();
  final ChatService _chatService = ChatService();

  void _sendMessage() async {
    final message = _controller.text.trim();
    if (message.isNotEmpty) {
      await _chatService.sendMessage(widget.userId, message);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: Colors.grey.shade100,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.teal),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }
}

