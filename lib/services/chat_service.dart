import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendMessage(String userId, String text) async {
    await _firestore.collection('messages').add({
      'userId': userId,
      'text': text,
      'fromUser': true,
      'timestamp': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getMessages(String userId) {
    return _firestore
        .collection('messages')
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .snapshots();
  }
}
