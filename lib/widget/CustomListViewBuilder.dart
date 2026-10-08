import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/widget/ItemNote.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubitState.dart';

class Customlistviewbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Notesviewcubit,NotesViewState>(
      builder: (context, state) {
          List<Itemnotemodel> notes = BlocProvider.of<Notesviewcubit>(context).notes ?? [];
        return ListView.builder(
          itemCount:  notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Itemnote(
                note: notes[index],
              ),
            );
          },
        );
      },
    );
  }
}
