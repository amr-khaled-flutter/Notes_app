import 'package:flutter/material.dart';
import 'package:notes_app/Views/NotesPage.dart';

void main() {
  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
