import 'package:flutter/material.dart';
import 'package:lab2/home.dart';
import 'package:lab2/computer.dart';

void main() {
  runApp(MaterialApp(
    home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("Computer Store"),
          backgroundColor: Colors.amberAccent,
          leading: PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (context) => computers
                .map((computer) => PopupMenuItem(
                      value: computer,
                      child: Text(computer.modelName),
                    ))
                .toList(),
            onSelected: (computer) => SnackBarMessenger(context, "${computer.modelName} - \$${computer.price}"),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () => MaterialBannerMessenger(context, "This app helps you browse available computers. Tap an image for details."),
            ),
          ],
        ),
        body: const Home(),
      ),
    ),
  ));
}