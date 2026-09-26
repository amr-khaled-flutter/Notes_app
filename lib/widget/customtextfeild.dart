import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  String hinttext;
  int maxlines;

  EdgeInsetsGeometry? contentPadding;
  Customtextfeild({this.contentPadding,required this.hinttext, this.maxlines = 1});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          fontSize: 23,
          color: Color(0xff84B2A7),
        ),
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
