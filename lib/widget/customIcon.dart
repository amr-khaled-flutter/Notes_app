import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Customicon extends StatelessWidget {
  final IconData? icon;
  void Function()? onpressed;
  Customicon({this.icon,this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff3D3D3D),
      ),
      width: 45,
      height: 45,
      child: Center(
        child: IconButton(
          onPressed: onpressed,
          icon: Icon(icon, size: 35, color: Colors.white),
        ),
      ),
    );
  }
}
