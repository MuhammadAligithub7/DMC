import 'package:dmc/Dmc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMC',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade700,
      ),
      home: const Dmc(),
    );
  }
}
