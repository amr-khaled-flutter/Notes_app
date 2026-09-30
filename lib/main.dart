import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/EditView.dart';
import 'package:notes_app/Views/NotesView.dart';
import 'package:notes_app/const/constant.dart';
import 'package:notes_app/models/NoteModel.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kNotesBox);
  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.id: (context) => NotesView(),
        Editview.id: (context) => Editview(),
      },
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
    );
  }
}
