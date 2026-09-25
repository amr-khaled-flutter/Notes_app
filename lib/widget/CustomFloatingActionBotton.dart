import 'package:flutter/material.dart';

class Customfloatingactionbotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Color(0xff53EDBA),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            return Container();
          },
        );
      },
      child: Icon(Icons.add, color: Colors.black, size: 25,),
    );
  }
}
