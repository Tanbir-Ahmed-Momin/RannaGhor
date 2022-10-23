import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';
import 'package:ranna_ghor/scr/screens/home.dart';
import 'package:ranna_ghor/scr/screens/registration.dart';
import 'package:ranna_ghor/scr/helpers/screen_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget> [
               Image.asset("assets/images/logo.png",height: 240,width: 240,),
             ],
           ),
           Padding(
             padding: const EdgeInsets.all(12),
             child: Container(
               decoration: BoxDecoration(
                 border: Border.all(color: grey),
                 borderRadius: BorderRadius.circular(15)
               ),
               child: Padding(padding: EdgeInsets.only(left: 10),
               child: TextFormField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: "Emails",
                   icon: Icon(Icons.email)
                 ),
               ),
               ),
             ),
           ) ,

           Padding(
             padding: const EdgeInsets.all(12),
             child: Container(
               decoration: BoxDecoration(
                 border: Border.all(color: grey),
                 borderRadius: BorderRadius.circular(15)
               ),
               child: Padding(padding: EdgeInsets.only(left: 10),
               child: TextFormField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: "Password",
                   icon: Icon(Icons.lock)
                 ),
               ),
               ),
             ),
           ) ,
          
           Padding(
             padding: const EdgeInsets.all(12),
             child:GestureDetector(
             onTap: (){
                changeScreen(context, Home());
             },
             child: Container(
               decoration: BoxDecoration(
                 border: Border.all(color: grey),
                 borderRadius: BorderRadius.circular(15)
               ),
               
               child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
               
               child: Row( 
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("Login",style: TextStyle(color: black,fontSize: 22),)
                 ],
               ),
               ),
             ),
             ),
           ),
           

           GestureDetector(
             onTap: (){
                changeScreen(context, RegistrationScreen());
             },
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Register Here",style: TextStyle(fontSize: 20),),
               ],
             ),
           ),
          ],
        ),
      ),
      
    );
  }
}