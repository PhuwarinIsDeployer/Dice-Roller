import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 169, 133, 255), Color.fromARGB(255, 26, 2, 80)),
      ),
    ),
  );
}
