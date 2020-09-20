 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import 'package:flutter_signin_button/flutter_signin_button.dart';

 import 'constants.dart';

 class LoginPage extends StatefulWidget {
   @override
   State<StatefulWidget> createState() => _LoginPageState();
 }

 class _LoginPageState extends State<LoginPage> {
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
                 emailInputBox(),
                 Container(
                   padding: EdgeInsets.only(bottom: 8),
                 ),
                 passwordInputBox(),
                 Container(
                   padding: EdgeInsets.only(bottom: 8),
                 ),
                 forgotPassword(),
                 Container(
                   padding: EdgeInsets.only(bottom: 8),
                 ),
                 createNewAccount(),
                 Container(
                   padding: EdgeInsets.only(bottom: 8),
                 ),
                 signInWithFacebook(),
                 signInWithTwitter()
               ],
             )
         ));
   }

   Widget emailInputBox() {
     return TextField(
       decoration: new InputDecoration(
           border: new OutlineInputBorder(
               borderRadius: const BorderRadius.all(
                   const Radius.circular(10.0)
               )
           ),
           filled: true,
           hintStyle: new TextStyle(color: Colors.grey[800]),
           hintText: "Email/Username",
           fillColor: Colors.white70),
     );
   }

   Widget passwordInputBox() {
     return TextField(
       decoration: new InputDecoration(
           border: new OutlineInputBorder(
               borderRadius: const BorderRadius.all(
                   const Radius.circular(10.0)
               )
           ),
           filled: true,
           hintStyle: new TextStyle(color: Colors.grey[800]),
           hintText: "Password",
           fillColor: Colors.white70),
     );
   }

   Widget forgotPassword(){
     return Text(
       "forgot password?"
     );
   }

   Widget createNewAccount(){
     return Text(
         "Create an account"
     );
   }

   Widget signInWithFacebook(){
     return SignInButton(
       Buttons.Facebook,
       onPressed: () {},
     );
   }

   Widget signInWithTwitter(){
     return SignInButton(
       Buttons.Twitter,
       onPressed: ()  {},
     );
   }
 }