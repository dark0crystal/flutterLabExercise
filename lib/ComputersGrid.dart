import 'package:flutter/material.dart';
import 'package:lab2/computer.dart';
import 'package:lab2/computerWidget.dart';

class ComputersGrid extends StatelessWidget {
  const ComputersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: computers.length,
      itemBuilder: (context, index) {
        final computer = computers[index];
        return ComputerWidget(computer: computer);
      },
    );
  }
}
