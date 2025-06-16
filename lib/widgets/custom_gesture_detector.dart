import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  CustomGestureDetector({super.key, required this.text, required this.onTap});

  final String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
