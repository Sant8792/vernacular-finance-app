import 'package:flutter/material.dart';
import '../data/lessons.dart';
import '../localization/app_localizations.dart';
import 'lesson_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(local.translate('home_title') ?? 'Finance Learning'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return ListTile(
            title: Text(local.translate(lesson['title']) ?? ''),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LessonScreen(lesson)),
              );
            },
          );
        },
      ),
    );
  }
}
