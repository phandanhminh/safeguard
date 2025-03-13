import 'package:flutter/material.dart';

class WeeklyTimetableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weekly Timetable")),
      body: Center(
        child: Text(
          "Your weekly schedule will appear here.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
