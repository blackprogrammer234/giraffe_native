
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
        ),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
            ),
          color: Colors.orange,
          child: Text(
            "Sign up",
              style: TextStyle(
                fontSize: 14.0,
              )
          ),
        )
    );
  }





}