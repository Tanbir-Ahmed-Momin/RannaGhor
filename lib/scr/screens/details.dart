
import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';
import 'package:ranna_ghor/scr/models/products.dart';

class Details extends StatefulWidget {
  final Product product;

  Details({required this.product });


  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
             Container(
               height: 500,
               
          child: Stack(
            children: <Widget>[
                  Image.asset("assets/images/${widget.product.image}"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                      IconButton(
                        onPressed:(){Navigator.pop(context);}, 
                        icon: Icon(Icons.arrow_back_ios)
                        ),
                  Stack(
                    children:<Widget> [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children:<Widget>[
                              Image.asset("assets/images/shopping-bag.png",height: 30,width: 30,),
                              
                                     ],
                                   ),
                                 ),
                      Positioned(
                            right: 5,
                            top: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: grey,
                                    offset: Offset(2,1),
                                    blurRadius: 3
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4, right: 4),
                                child: Text("3",style:TextStyle(fontSize: 15,color: red )),
                              )
                            ),
                          )

                    ],
                  ),
                         ],
                       ),
                       
                  ],
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget> [
                   
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(widget.product.name,style:TextStyle(fontSize: 26,color: black ,fontWeight: FontWeight.bold)),
                     ),
                     SizedBox(width: 4,),
                   Padding(
                     padding:  const EdgeInsets.all(4),
                     child:  Text("${widget.product.price.toString()}TK",style:TextStyle(fontSize: 20,color: red )),
                  ),
              
                 ],
               ),
            SizedBox(
                 height: 15,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.remove,size: 36,)),
                    ),
                    GestureDetector(
               onTap: (){},
               child: Container(
                     decoration: BoxDecoration(
                       color: red,
                     ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(28,12,28,12),
                       child: Text("Add To Bag",style:TextStyle(fontSize: 24,color: white ,fontWeight: FontWeight.bold)),
                     ),
               ),
             ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 36,)),
                    ),
                  ],
                )     
      
          ],
        ),
      ),
      
    );
  }
}