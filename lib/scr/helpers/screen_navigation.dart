import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void changeScreen(BuildContext context,Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void changeScreenReplacrment(BuildContext context,Widget widget){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
}