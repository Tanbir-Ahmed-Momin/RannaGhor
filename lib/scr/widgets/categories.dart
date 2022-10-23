import 'package:flutter/material.dart';

import 'package:ranna_ghor/scr/models/category.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';

List<Category> categoriesList= [

  Category(name:"Chicken",image: "chicken.png"),
  Category(name:"Barger",image: "barger.png"),
  Category(name:"Set Mnue",image: "setMnue01.png"),
  Category(name:"Pizza",image: "pizza.png"),
  Category(name:"Maxcican",image: "nachus.png"),

];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
         height: 120,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: categoriesList.length,
           itemBuilder: (_, index){
             return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: <Widget>[
                 Container(
                   decoration: BoxDecoration(
                   color: white,
                   boxShadow: [
                     BoxShadow(
                       color: red,
                       offset: Offset(1,1),
                       blurRadius: 2
                     )
                   ]
                 ),
                 child: Padding(padding: EdgeInsets.all(4),
                 child: Image.asset("assets/images/${categoriesList[index].image}",width: 80,),)
                 ),
                 SizedBox(height: 5,),
                 Text(categoriesList[index].name)
               ],
             ),
           );

           },
         ),
        );
  }
}