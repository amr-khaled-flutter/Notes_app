import 'package:flutter/material.dart';
import 'package:notes_app/widget/CustmFloatingActionBotton.dart';
import 'package:notes_app/widget/customNotesViewBody.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomNotesViewBody(),
      floatingActionButton: Customfloatingactionbotton(),
    );
  }
}
