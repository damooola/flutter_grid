import 'package:flutter/material.dart';

import 'grid_container.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            // First row
            SizedBox(
              height: constraints.maxHeight * 0.25,
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: GridContainer(number: "1"),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: GridContainer(number: "2")),
                        SizedBox(height: 8),
                        Expanded(child: GridContainer(number: "3")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Second row
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: const Row(
                children: [
                  Expanded(child: GridContainer(number: "4")),
                  SizedBox(width: 8),
                  Expanded(child: GridContainer(number: "5")),
                  SizedBox(width: 8),
                  Expanded(child: GridContainer(number: "6")),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Third row
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: GridContainer(number: "9")),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(flex: 2, child: GridContainer(number: "7")),
                        SizedBox(height: 8),
                        Expanded(child: GridContainer(number: "10")),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: GridContainer(number: "8")),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
