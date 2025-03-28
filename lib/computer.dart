import 'package:flutter/material.dart';

class Computer {
  final String modelName;
  final double price;
  final String imagePath;

  Computer({required this.modelName, required this.price, required this.imagePath});
}

final List<Computer> computers = [
  Computer(modelName: 'Dell Latitude 7450', price: 550, imagePath: 'lib/assets/images/dell_i5-4th_gen.jpg'),
  Computer(modelName: 'Microsoft Surface Laptop', price: 600, imagePath: 'lib/assets/images/microsoft-surface-laptop.jpeg'),
  Computer(modelName: 'Apple MacBook Air 15', price: 750, imagePath: 'lib/assets/images/apple-macbook.jpeg'),
  Computer(modelName: 'Asus Zenbook S 14', price: 250, imagePath: 'lib/assets/images/asus-vivobook-s-14.png'),
  Computer(modelName: 'Dell I5 4th Gen Desktop', price: 350, imagePath: 'lib/assets/images/dell-i5-4th-gen.jpg'),
  Computer(modelName: 'HP OmniStudio X All-in-One', price: 330, imagePath: 'lib/assets/images/HP_OmniStudio.jpg'),
];

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