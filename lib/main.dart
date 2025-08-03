import 'package:flutter/material.dart';
import 'package:news/views/home_views.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(const OverlaySupport(child: Main()));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeviews(),
    );
  }
}
