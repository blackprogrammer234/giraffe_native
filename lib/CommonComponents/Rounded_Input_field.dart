import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget{
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);
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
        child: TextFormField(
          onChanged: onChanged,
            decoration: new InputDecoration(
                hintText: hintText,
                filled: true,
                fillColor: Colors.white70,
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
            )
        ),
      );
  }




}