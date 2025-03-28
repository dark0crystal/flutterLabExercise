import 'package:flutter/material.dart';
import 'package:lab2/home.dart';


void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text("Helloo world"),
        backgroundColor: Colors.amberAccent,
      ),
      body:const Home(),

    )
  ));
}


void SnackBarMessenger(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), duration: Duration(seconds: 3)),
  );
}

void MaterialBannerMessenger(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
          child: Icon(Icons.close, color: Colors.red, size: 50.0),
        )
      ],
    ),
  );
}



class Computer {
  final String modelName;
  final double price;
  final String imagePath;

  Computer({required this.modelName, required this.price, required this.imagePath});
}

final List<Computer> computers = [
  Computer(modelName: 'Dell Latitude 7450', price: 550, imagePath: 'assets/dell-latitude-7450.jpeg'),
  Computer(modelName: 'Microsoft Surface Laptop', price: 600, imagePath: 'assets/microsoft-surface-laptop.jpeg'),
  Computer(modelName: 'Apple MacBook Air 15', price: 750, imagePath: 'assets/apple-macbook.jpeg'),
  Computer(modelName: 'Asus Zenbook S 14', price: 250, imagePath: 'assets/asus-vivobook-s-14.png'),
  Computer(modelName: 'Dell I5 4th Gen Desktop', price: 350, imagePath: 'assets/dell-i5-4th-gen.jpg'),
  Computer(modelName: 'HP OmniStudio X All-in-One', price: 330, imagePath: 'assets/hp-omnistudio.png'),
];