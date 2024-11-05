import 'package:flutter/material.dart';

import '../flutter_grid.dart';

class FlutterGridApp extends StatelessWidget {
  const FlutterGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FlutterGrid());
  }
}
