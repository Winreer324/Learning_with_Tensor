import 'package:flutter/material.dart';

class LessonTwenty extends StatefulWidget {
  @override
  _LessonTwentyState createState() => _LessonTwentyState();
}

class _LessonTwentyState extends State<LessonTwenty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('20'),),
      body: Center(
        child: Text('20')
      ),
    );
  }
}