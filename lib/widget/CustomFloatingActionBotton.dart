import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_bottonSheet.dart';

class Customfloatingactionbotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Color(0xff53EDBA),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          context: context,
          builder: (context) {
            return AddNoteBottonsheet();
          },
        );
      },
      child: Icon(Icons.add, color: Colors.black, size: 25),
    );
  }
}
