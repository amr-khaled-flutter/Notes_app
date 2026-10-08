import 'package:flutter/material.dart';
import 'package:notes_app/widget/AddNoteBottomSheet.dart';

class Customfloatingactionbotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff54EED9),
      shape: CircleBorder(),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return  Addnotebottomsheet();
          },
        );
      },
      child: Icon(Icons.add, color: Colors.black, size: 20),
    );
  }
}
