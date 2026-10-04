import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CardWdigth",style: TextStyle(color: Colors.lime),
          ),
          backgroundColor: Colors.blue,
        ),
      body: Center(
        child: Card(
          shadowColor: Colors.blue,
               elevation: 5,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("My Card Wdight",style: TextStyle(color: Colors.deepPurple),),
        )),
      ),
    );
    }
}
