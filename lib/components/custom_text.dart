import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    @required this.text,
    @required this.color,
    @required this.weight,
  });
  final String text;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
