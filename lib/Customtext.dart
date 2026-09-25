import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  String text;
  Color color;
  FontWeight? fontWeight;

  double fontsize;
  Customtext({required this.color, required this.fontsize, required this.text, this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: color,fontWeight:fontWeight ),
    );
  }
}
