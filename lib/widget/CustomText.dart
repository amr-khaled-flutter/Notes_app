import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  String text;
  Color color;
  double fontsize;
  Customtext({required this.color, required this.fontsize, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontsize, color: color));
  }
}
