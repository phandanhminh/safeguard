import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Information")),
      body: Center(
        child: Text(
          "General information about your work.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
