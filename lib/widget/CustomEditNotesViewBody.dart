import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/widget/CustomAppBar.dart';
import 'package:notes_app/widget/CustomTextFeild.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';

class Customeditnotesviewbody extends StatefulWidget {
  final Itemnotemodel note;

  const Customeditnotesviewbody({required this.note});

  @override
  State<Customeditnotesviewbody> createState() =>
      _CustomeditnotesviewbodyState();
}

class _CustomeditnotesviewbodyState extends State<Customeditnotesviewbody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          Customappbar(
            icon: Icons.check,
            text: 'Edit Notes',
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              BlocProvider.of<Notesviewcubit>(context).fetchallnotes();
              widget.note.save();

              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          Customtextfeild(
            onchanged: (data) {
              title = data;
            },
            hinttext: widget.note.title,
            maxlines: 1,
            onsaved: (data) {
              title = data;
            },
          ),
          SizedBox(height: 30),
          Customtextfeild(
            onchanged: (data) {
              subtitle = data;
            },
            hinttext: widget.note.subtitle,
            maxlines: 5,
            onsaved: (data) {
              subtitle = data;
            },
          ),
        ],
      ),
    );
  }
}
