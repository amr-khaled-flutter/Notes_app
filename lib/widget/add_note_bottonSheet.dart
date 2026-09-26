import 'package:flutter/material.dart';
import 'package:notes_app/widget/customtextfeild.dart';

class AddNoteBottonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Customtextfeild(),
      ],
    );
  }
}
