import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  String hinttext;
  int maxlines;
  Function(String)? onchanged;
  Function(String?)? onsaved;
  Customtextfeild({
    required this.hinttext,
    required this.maxlines,
    this.onsaved,
    this.onchanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      onSaved: onsaved,
      validator: (data) {
        if (data == null || data.isEmpty) {
          return "Required";
        }
        return null;
      },
      maxLines: maxlines,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 18, color: Colors.white),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        
      ),
    );
  }
}
