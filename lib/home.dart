import 'package:flutter/material.dart';
import 'package:lab2/computersGrid.dart';
import 'package:lab2/computer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void findCheapestComputer(BuildContext context) {
    final cheapest = computers.reduce((a, b) => a.price < b.price ? a : b);
    MaterialBannerMessenger(context, "Cheapest: ${cheapest.modelName} - \$${cheapest.price}");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ComputersGrid(),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => findCheapestComputer(context),
            child: const Text("Find Cheapest Computer"),
          ),
        )
      ],
    );
  }
}