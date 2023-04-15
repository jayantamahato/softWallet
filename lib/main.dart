import 'package:flutter/material.dart';
import 'package:soft_wallet/Home/home.dart';

import 'flashPage/flashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Home(),
    );
  }
}
