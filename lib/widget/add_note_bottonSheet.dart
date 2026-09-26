import 'package:flutter/material.dart';
import 'package:notes_app/widget/AddBotton.dart';
import 'package:notes_app/widget/customtextfeild.dart';

class AddNoteBottonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Customtextfeild(hinttext: 'Title',),
          SizedBox(height: 30,),
          Customtextfeild(hinttext: 'Context',contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 60),),
          SizedBox(height: 30,),
          Addbotton(),
        ],
      ),
    );
  }
}
