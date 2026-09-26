import 'package:flutter/material.dart';
import 'package:notes_app/Views/EditView.dart';
import 'package:notes_app/Views/NotesView.dart';

void main() {
  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.id : (context) => NotesView(),
        Editview.id : (context) => Editview(),
      },
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
    );
  }
}
