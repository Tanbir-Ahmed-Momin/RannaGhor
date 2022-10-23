import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/screens/details.dart';
import 'package:ranna_ghor/scr/models/products.dart';
import 'package:ranna_ghor/scr/helpers/screen_navigation.dart';

import 'package:ranna_ghor/scr/helpers/commons.dart';

List <Product> productList = [

  Product(image: "chicken-biryani.jpg", name: "Chicken Biriyani", 
  rating: 4.2,price: 450 ,vendor: "good foods",whiseList: true ),
  Product(image: "noodles.jpg", name: "Noodles", 
  rating: 4.5,price: 120 ,vendor: "good foods",whiseList: true ),
  Product(image: "cf.jpeg", name: "Fried chicken", 
  rating: 4.9,price: 200 ,vendor: "good foods",whiseList: true )

];

class Featuerd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
           height: 240,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: productList.length,
             itemBuilder:(_,index){
             return Padding(
               padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
               child:GestureDetector(
                 onTap: (){
                   changeScreen(_, Details(product:productList[index],));
                 },
                child: Container(
           height: 220,
           width: 200,
           decoration: BoxDecoration(
               color: white,boxShadow: [
                 BoxShadow(
                   color: grey,
                   offset: Offset(15,5),
                   blurRadius: 30
                 )
               ]
             ),
           child: Column(
             children: <Widget> [
               Image.asset("assets/images/${productList[index].image}",height: 140,width: 140,),
             
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget> [
                   
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(productList[index].name,style:TextStyle(fontSize: 20),),
                     ),
                     Padding(padding: EdgeInsets.all(8),
                     child:  Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: white,
                         boxShadow: [
                                  BoxShadow(
                                     color: grey,
                                     offset: Offset(1,1),
                                     blurRadius: 4
                                            )
                                          ]
                                        ),
                      child: Padding(
                         padding: const EdgeInsets.all(4),
                         child: productList[index].whiseList ? Icon(Icons.favorite,color: red,size: 18,)
                         :Icon(Icons.favorite_border,color: red,size: 18,),
                         
                       ),
                     ),
                    )
                 ],
               ),
               
               Row(
                 children: <Widget>[
                   Row(
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     children: <Widget> [
                       
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(productList[index].rating.toString(),style:TextStyle(fontSize: 14)),
                       ),
                       SizedBox(width: 2,),
                       Icon(Icons.star_sharp,color: red,size: 16,),
                        Icon(Icons.star_sharp,color: red,size: 16,),
                         Icon(Icons.star_sharp,color: red,size: 16,),
                          Icon(Icons.star_sharp,color: red,size: 16,),
                           Icon(Icons.star_sharp,color: grey,size: 16,)
                     ],
                   ),
                   SizedBox(width: 4,),
                   Padding(
                     padding:  const EdgeInsets.all(4),
                     child: Text( "${productList[index].price}TK", style: TextStyle(fontWeight: FontWeight. bold),),
                  ),
              
                 ],
               )

             ],

           ) ,
         ),
             
             )
             );
           }),
         );
  }
}
