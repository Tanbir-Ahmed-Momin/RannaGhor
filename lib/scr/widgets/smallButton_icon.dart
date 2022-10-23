import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';

class SmallButton extends StatelessWidget {
  final IconData icon;

  SmallButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
         decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20)
                      ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(icon,size: 16,color: red,),
        ),
      ),
    );
  }
}