import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  final String advice;
  const AdviceField({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Text('" $advice "', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
