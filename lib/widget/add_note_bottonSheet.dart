import 'package:flutter/material.dart';
import 'package:notes_app/widget/customform.dart';

class AddNoteBottonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Customform(),
      ),
    );
  }
}
