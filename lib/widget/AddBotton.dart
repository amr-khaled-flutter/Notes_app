import 'package:flutter/material.dart';

class Addbotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff4EDDC9),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
