import 'package:flutter/material.dart';

class ShiftHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shift History")),
      body: Center(
        child: Text(
          "Shift history details will be displayed here.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
