import 'package:flutter/material.dart';
import 'package:notes_app/widget/AddBotton.dart';
import 'package:notes_app/widget/customtextfeild.dart';

class Customform extends StatefulWidget {
  @override
  State<Customform> createState() => _CustomformState();
}

class _CustomformState extends State<Customform> {
  String? title, subtitle;
  final GlobalKey<FormState> key = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: key,
      child: Column(
        children: [
          SizedBox(height: 50),
          Customtextfeild(
            hinttext: 'Title',
            onsaved: (data) {
              title = data;
            },
          ),
          SizedBox(height: 30),
          Customtextfeild(
            hinttext: 'Context',
            maxlines: 5,
            onsaved: (data) {
              subtitle = data;
            },
          ),
          SizedBox(height: 30),
          Addbotton(
            ontap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
