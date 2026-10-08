import 'package:flutter/material.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/widget/CustomEditNotesViewBody.dart';

class Editnotesview extends StatelessWidget {
  final Itemnotemodel note;

  const Editnotesview({required this.note});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Customeditnotesviewbody(
      note: note,
    ));
  }
}
