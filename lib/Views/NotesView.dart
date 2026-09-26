import 'package:flutter/material.dart';
import 'package:notes_app/widget/CustomFloatingActionBotton.dart';
import 'package:notes_app/widget/customNotesviewbody.dart';

class NotesView extends StatelessWidget {
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Customnotesviewbody(),
      floatingActionButton: Customfloatingactionbotton(),
    );
  }
}
