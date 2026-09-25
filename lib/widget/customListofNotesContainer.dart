import 'package:flutter/material.dart';
import 'package:notes_app/widget/CustomNotesContainer.dart';

class Customlistofnotescontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Customnotescontainer(),
        );
      },
    );
  }
}
