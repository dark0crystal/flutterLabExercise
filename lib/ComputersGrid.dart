// computers_grid.dart
import 'package:flutter/material.dart';
import 'package:lab2/computer.dart';
import 'package:lab2/computerWidget.dart';

class ComputersGrid extends StatelessWidget {
  const ComputersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: (computers.length / 2).ceil(),
      itemBuilder: (context, index) {
        int firstIndex = index * 2;
        int secondIndex = firstIndex + 1;

        return Column(
          children: [
            Row(
              children: [
                Expanded(child: ComputerWidget(computer: computers[firstIndex])),
                if (secondIndex < computers.length)
                  Expanded(child: ComputerWidget(computer: computers[secondIndex])),
              ],
            ),
            if (index != (computers.length / 2).ceil() - 1)
              const Divider(thickness: 2, color: Colors.blueAccent),
          ],
        );
      },
    );
  }
}
