import 'package:flutter/material.dart';
import 'package:notes_app/widget/customAppbar.dart';
import 'package:notes_app/widget/customtextfeild.dart';

class Editnotesviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Customappbar(title: 'Edit Notes',icon: Icons.check,),
          SizedBox(height: 50,),
          Customtextfeild(hinttext: 'Title'),
          SizedBox(height: 30,),
          Customtextfeild(hinttext: 'Context',maxlines: 5,)
        ],
      ),
    );
  }
}
