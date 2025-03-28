import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text("Helloo world"),
        backgroundColor: Colors.amberAccent,
      ),
      body:Text("This is the body")
    )
  ));
}


class Computer {
  final String modelName;
  final double price;
  final String imagePath;

  Computer({required this.modelName, required this.price, required this.imagePath});
}