import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late Color color;
  late Text text;
  VoidCallback onTapped;

  RoundedButton({
    required this.color,
    required this.text,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTapped,
          minWidth: 200.0,
          height: 42.0,
          child: text,
        ),
      ),
    );
  }
}
