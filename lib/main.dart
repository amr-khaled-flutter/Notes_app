import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Simple_bloc_observer.dart';
import 'package:notes_app/Views/Notes_View.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/const/constfile.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemnotemodelAdapter());
 await Hive.openBox<Itemnotemodel>(kopenbox);

  runApp(Notes_app());
}

class Notes_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Notesviewcubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        
        home: NotesView(),
      ),
    );
  }
}
