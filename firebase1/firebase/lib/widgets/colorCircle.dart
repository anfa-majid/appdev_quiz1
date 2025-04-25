import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;

  const ColorCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
