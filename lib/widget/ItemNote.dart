import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/EditNotesView.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/widget/CustomText.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';

class Itemnote extends StatelessWidget {
  final Itemnotemodel note;
  Itemnote({required this.note});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Editnotesview(note: note);
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Customtext(
                color: Colors.black,
                fontsize: 28,
                text: note.title,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Customtext(
                  color: Color(0xffB8854A),
                  fontsize: 22,
                  text: note.subtitle,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<Notesviewcubit>(context).fetchallnotes();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 35),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19),
              child: Customtext(
                color: Color(0xffCD994A),
                fontsize: 20,
                text: note.time,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
