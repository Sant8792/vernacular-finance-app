import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final Map lesson;

  LessonScreen(this.lesson);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson['title'])),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lesson['description'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Placeholder(fallbackHeight: 200, fallbackWidth: double.infinity),
            // You can replace Placeholder with Video/Audio player later
          ],
        ),
      ),
    );
  }
}


