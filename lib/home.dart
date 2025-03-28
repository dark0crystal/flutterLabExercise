import 'package:flutter/material.dart';
import 'package:lab2/computersGrid.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ComputersGrid(),
    );
  }
}