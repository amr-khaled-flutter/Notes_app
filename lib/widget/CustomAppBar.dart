import 'package:flutter/material.dart';
import 'package:notes_app/widget/CustomText.dart';
import 'package:notes_app/widget/customIcon.dart';

class Customappbar extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onpressed;
  Customappbar({this.icon, required this.text, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Customtext(color: Colors.white, fontsize: 32, text: text),
        Customicon(icon: icon,onpressed: onpressed,),
      ],
    );
  }
}
