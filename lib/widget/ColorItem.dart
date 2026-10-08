import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  final bool isActive;
  final Color color;

  const Coloritem({required this.isActive,required this.color});
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 39,
            backgroundColor: Colors.white,
            child: CircleAvatar(backgroundColor: color, radius: 36),
          )
        : CircleAvatar(backgroundColor: color, radius: 38);
  }
}
