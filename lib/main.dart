import 'package:flutter/material.dart';
import 'package:japan_language/screens/Home_Pgae.dart';

void main() {
  runApp(const japan_app());
}

class japan_app extends StatelessWidget {
  const japan_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//https\://services.gradle.org/distributions/gradle-8.3-all.zip
//file:///E:/gradle-8.10-bin.zip
