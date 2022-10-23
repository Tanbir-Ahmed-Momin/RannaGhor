import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/helpers/commons.dart';
import 'package:ranna_ghor/scr/models/products.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({Key? key}) : super(key: key);

  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      image: "chicken-biryani.jpg",
      name: "Chicken Biriyani",
      rating: 4.2,
      price: 450,
      vendor: "good foods",
      whiseList: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Text("Shopping Bag", style: TextStyle(color: black)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/images/shopping-bag.png",
                    height: 20,
                    width: 20,
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
                                offset: Offset(2, 1),
                                blurRadius: 3)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Text("3",
                            style: TextStyle(fontSize: 15, color: red)),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 120,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(color: red, offset: Offset(3, 5), blurRadius: 30)
              ]),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/${product.image}",
                    height: 140,
                    width: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: product.name + "\n\n",
                              style: TextStyle(color: black, fontSize: 20)),
                          TextSpan(
                              text: product.price.toString() + "TK",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.delete))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
