import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/screens/bag.dart';
import 'package:ranna_ghor/scr/widgets/bottom_navigation_icons.dart';
import 'package:ranna_ghor/scr/widgets/categories.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';
import 'package:ranna_ghor/scr/helpers/screen_navigation.dart';
import 'package:ranna_ghor/scr/widgets/smallButton_icon.dart';

import 'package:ranna_ghor/scr/widgets/featuerd_products.dart';

class Home extends StatefulWidget {
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body:SafeArea(
        child : ListView(
         children: <Widget>[
           Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("What would you like to eat?",style:TextStyle(fontSize: 18, ))
              ), 
                Stack( 
                  children : <Widget> [ 
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
                Positioned( 
                  top : 10,
                  right : 10,
                  child :Container( 
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(color: red, 
                  borderRadius: BorderRadius.circular(20)
                      ),
                    )
                   )
                  ],
                )
              ],
           ),
           SizedBox( height: 5,
           ),
           Padding(
             padding:EdgeInsets.all(8.0),
             child:Container(
             decoration: BoxDecoration(
               color: white,
               boxShadow: [
                 BoxShadow(
                   color: grey,
                   offset: Offset(1,1),
                   blurRadius: 4
                 )
               ]
             ),
             child: ListTile(
               leading: Icon(Icons.search,color: red,),
               title: TextField(
                 decoration: InputDecoration(
                   hintText: "Find Food & Restaurent",
                   border: InputBorder.none
                 ),
               ),
               trailing:Icon(Icons.filter_list,color: red,) ,
             ),
           ),
        ),
         SizedBox(
          height: 5,
           ),
         Categories(),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Featured",style:TextStyle(fontSize: 20)),
         ),
         Featuerd(),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Populer",style:TextStyle(fontSize: 20)),
         ),
         Padding(
           padding: const EdgeInsets.all(2),
           child: Stack(
             children: <Widget>[
               Container(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image.asset("assets/images/pizza.jpg")),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     
                     SmallButton(icon: Icons.favorite,),
                     
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.star,color: yellow,size: 20,),
                            ),
                            Text("4.9",style:TextStyle(fontSize: 14)),
                          ],
                        )
                       ),
                     )

                   ],
                ),
               ),
               Positioned.fill(
                 child: Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     height:100 ,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)), 
                       gradient: LinearGradient(
                         begin: Alignment.bottomCenter,
                         end: Alignment.topCenter,
                         colors: [
                           Colors.black.withOpacity(0.8),
                           Colors.black.withOpacity(0.7),
                           Colors.black.withOpacity(0.6),
                           Colors.black.withOpacity(0.6),
                           Colors.black.withOpacity(0.4),
                           Colors.black.withOpacity(0.1),
                           Colors.black.withOpacity(0.05),
                           Colors.black.withOpacity(0.025),

                         ],
                       ),
                      ),
                    )
                   ),
                 ),
                 Positioned.fill(child: Align(
                   alignment: Alignment.bottomCenter,
                   child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.fromLTRB(12, 8, 8,8 ),
                       child: RichText(text: TextSpan(
                         children: [
                           TextSpan(text: "Pizza \n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: white)),
                           TextSpan(text: "By: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: white)),
                           TextSpan(text: "Pizza Hut",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: white)),
                         ],style: TextStyle(color: black)
                       )),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: RichText(text: TextSpan(
                         children: [
                           TextSpan(text: "\220TK \n",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300,color: white)),
                          
                         ],style: TextStyle(color: black)
                       )),
                     ),
                   ],
                 ),
               )
              )
             ],
           ),
         )
        ],
      ),
    ),
    bottomNavigationBar: Container(
      height: 80,
      color: white,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          
         BottomNavIcon(
           onTap: (){
             
           },
           image: "home-icon.png", 
           name: "Home",
           ),
         BottomNavIcon(
           onTap: (){
             
           },
           image: "man.png", 
           name: "Profile",
           ),
         BottomNavIcon(
           onTap: (){
             changeScreen(context, ShoppingBag());
           },
           image: "shopping-bag.png", 
           name: "Cart",
           ),
         BottomNavIcon(
           onTap: (){
             
           },
           image: "location.png", 
           name: "Near By",
           ), 

        ],
      ) ,
      ),
  );
 } 
}