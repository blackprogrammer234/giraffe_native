import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giraffenative/CommonComponents/Rounded_Input_field.dart';

class RegisterAccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterAccountPage();
}

class _RegisterAccountPage extends State<RegisterAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedInputField(hintText: "username", onChanged: (value) {}),
                RoundedInputField(hintText: "password", onChanged: (value) {}),
                RoundedInputField(hintText: "confirm password", onChanged: (value) {})
              ],
            )
        ));
  }

  Widget createUsername(String name){
    return TextFormField(
      decoration: new InputDecoration(
        hintText: name,
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        )
      )
    );
  }
}
