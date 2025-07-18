import 'package:cloud_firestore/cloud_firestore.dart';

class JournalService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveMood(String userId, String mood) async {
    await _firestore.collection('moods').add({
      'userId': userId,
      'mood': mood,
      'timestamp': Timestamp.now(),
    });
  }
}

