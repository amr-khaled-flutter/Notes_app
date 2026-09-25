import 'package:flutter/material.dart';
import 'package:notes_app/widget/CustomNotesContainer.dart';
import 'package:notes_app/widget/customAppbar.dart';
import 'package:notes_app/widget/customListofNotesContainer.dart';

class Customnotesviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          Customappbar(),
          SizedBox(height: 10),
          Expanded(
            child: Customlistofnotescontainer(),
          ),
        ],
      ),
    );
  }
}
