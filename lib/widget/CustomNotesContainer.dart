import 'package:flutter/material.dart';
import 'package:notes_app/Customtext.dart';

class Customnotescontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffFFCD7A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Customtext(
              color: Colors.black,
              fontsize: 28,
              text: 'Flutter tips',
              fontWeight: FontWeight.bold,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Customtext(
                color: Color(0xffC6934F),
                fontsize: 24,
                text: 'Build your carer with Amr Khaled',
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.delete, size: 35, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Customtext(
              color: Color(0xffC6934F),
              fontsize: 17,
              text: 'May 21,2025',
            ),
          ),
        ],
      ),
    );
  }
}
