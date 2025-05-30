import 'package:flutter/material.dart';
import 'package:lab2/computer.dart';

class ComputerWidget extends StatelessWidget {
  final Computer computer;

  const ComputerWidget({super.key, required this.computer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MaterialBannerMessenger(context, "${computer.modelName} - \$${computer.price}"),
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(computer.imagePath, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(computer.modelName, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}