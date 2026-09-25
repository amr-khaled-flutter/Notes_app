import 'package:flutter/material.dart';
import 'package:notes_app/Views/HomePage.dart';

void main() {
  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
