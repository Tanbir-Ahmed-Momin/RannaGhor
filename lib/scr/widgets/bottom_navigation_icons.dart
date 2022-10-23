import 'package:flutter/material.dart';


class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;
  final Function()? onTap;

  const BottomNavIcon({ Key? key ,required this.image,required this.name ,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child:GestureDetector(
              onTap: onTap ?? null ,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/images/$image",height: 36,width: 36,),
                  SizedBox(height: 2,),
                  Text(name)
                ],
              ),
            ),
          );
  }
}