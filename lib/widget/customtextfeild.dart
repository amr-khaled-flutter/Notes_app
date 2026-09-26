import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  String hinttext;
  int maxlines;
  Function(String?)? onsaved;

  EdgeInsetsGeometry? contentPadding;
  Customtextfeild({
    this.contentPadding,
    required this.hinttext,
    this.maxlines = 1,
    this.onsaved,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data == null || data.isEmpty) {
          return "Required";
        }
        return null;
      },
      onSaved: onsaved,
      style: TextStyle(fontSize: 20, color: Colors.white),
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 23, color: Color(0xff84B2A7)),
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
