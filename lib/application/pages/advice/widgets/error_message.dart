import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String errorMessage;
  const ErrorMessage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Icon(Icons.error, color: Colors.redAccent),
        Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.redAccent),
        ),
      ],
    );
  }
}
