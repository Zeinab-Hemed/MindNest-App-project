import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MindNestApp());
}

class MindNestApp extends StatelessWidget {
  const MindNestApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mindnestapp',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mindnestapp',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Scaffold(
        body: Center(
          child: Text('Firebase connected! 🎉', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
