import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  String hinttext;
  EdgeInsetsGeometry? contentPadding;
  Customtextfeild({this.contentPadding,required this.hinttext});
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
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
