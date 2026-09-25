import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 32, color: Colors.white)),
        Container(
          decoration: BoxDecoration(
            color: Color(0xff3A3A3A).withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 45,
          height: 45,
          child: Center(
            child: Icon(Icons.search, color: Colors.white, size: 35),
          ),
        ),
      ],
    );
  }
}
