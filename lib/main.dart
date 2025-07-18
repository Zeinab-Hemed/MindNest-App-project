import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screen/welcome_screen.dart';
import 'screen/mood_screen.dart';
import 'screen/chat_screen.dart';
import 'screen/selfcare_screen.dart';
import 'screen/sos_screen.dart';
import 'screen/library_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MindNestApp());
}

class MindNestApp extends StatelessWidget {
  const MindNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindNest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/mood': (context) => MoodScreen(),
        '/chat': (context) => const ChatScreen(),
        '/selfcare': (context) => const SelfCareScreen(),
        '/sos': (context) => const SOSScreen(),
        '/library': (context) => const LibraryScreen(),
      },
    );
  }
}
