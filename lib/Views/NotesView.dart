import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/Notes_Cubit/NoteCubit.dart';
import 'package:notes_app/widget/CustomFloatingActionBotton.dart';
import 'package:notes_app/widget/customNotesviewbody.dart';

class NotesView extends StatelessWidget {
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Notecubit(),
      child: Scaffold(
        body: Customnotesviewbody(),
        floatingActionButton: Customfloatingactionbotton(),
      ),
    );
  }
}
