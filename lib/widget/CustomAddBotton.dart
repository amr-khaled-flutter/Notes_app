import 'package:flutter/material.dart';

class Customaddbotton extends StatelessWidget {
  final bool isloading;
  Customaddbotton({this.isloading = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff62EEE2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: isloading == true
            ? SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(color: Colors.white),
              )
            : Text('Add', style: TextStyle(fontSize: 23, color: Colors.black)),
      ),
    );
  }
}
