import 'package:flutter/material.dart';

class Addbotton extends StatelessWidget {
  Function()? ontap;
  final bool loading;
  Addbotton({required this.ontap, this.loading = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff4EDDC9),
        ),
        child: Center(
          child: loading ? CircularProgressIndicator(
            color: Colors.white,
          ) :  Text(
            'Add',
            style: TextStyle(fontSize: 23, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
