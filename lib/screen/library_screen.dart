import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  final List<Map<String, String>> articles = const [
    {"title": "Understanding Anxiety", "summary": "Learn what anxiety is and how to manage it."},
    {"title": "What is Depression?", "summary": "Understand signs and ways to cope with depression."},
    {"title": "Self-Care Practices", "summary": "Daily habits that improve mental wellbeing."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mental Health Library")),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(articles[index]['title']!),
          subtitle: Text(articles[index]['summary']!),
        ),
      ),
    );
  }
}

