import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/EditView.dart';
import 'package:notes_app/Views/NotesView.dart';
import 'package:notes_app/const/constant.dart';
import 'package:notes_app/cubit/addnotecubit/addnotecubit.dart';
import 'package:notes_app/models/NoteModel.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Addnotecubit(),),
      ],
      child: MaterialApp(
        routes: {
          NotesView.id: (context) => NotesView(),
          Editview.id: (context) => Editview(),
        },
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        initialRoute: NotesView.id,
      ),
    );
  }
}
