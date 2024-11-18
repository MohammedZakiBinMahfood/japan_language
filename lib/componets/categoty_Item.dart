import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class category extends StatelessWidget {
  //cousum widget
  category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;

  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 29,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
