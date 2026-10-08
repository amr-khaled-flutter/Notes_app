import 'package:flutter/material.dart';
import 'package:notes_app/widget/ColorItem.dart';

class Listofcolors extends StatefulWidget {
  @override
  State<Listofcolors> createState() => _ListofcolorsState();
}

class _ListofcolorsState extends State<Listofcolors> {
  int currentindex = 0;
   List<Color> noteColors = [
  Color(0xFFFFF3B0), // Soft Yellow
  Color(0xFFFFC6C6), // Soft Pink
  Color(0xFFC8E6C9), // Soft Green
  Color(0xFFB3E5FC), // Soft Blue
  Color(0xFFD1C4E9), // Soft Purple
  Color(0xFFFFCCBC), // Soft Orange
  Color(0xFFB2DFDB), // Soft Teal
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: Coloritem(
                color: noteColors[index],
                isActive: currentindex == index),
            ),
          );
        },
        itemCount: noteColors.length,
      ),
    );
  }
}
