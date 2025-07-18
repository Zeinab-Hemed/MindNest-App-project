import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
// Ensure this file exists and defines WelcomeScreen
// Remove this line, as this file is already 'firebase_options.dart' and should not import itself.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MindNestApp());
}

class DefaultFirebaseOptions {
  // ignore: prefer_typing_uninitialized_variables
  static var currentPlatform;
}

class MindNestApp extends StatelessWidget {
  const MindNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindNest',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.teal,
      ),
      home: WelcomeScreen(),
    );
  }
  
  // ignore: non_constant_identifier_names
  WelcomeScreen() {}
}
