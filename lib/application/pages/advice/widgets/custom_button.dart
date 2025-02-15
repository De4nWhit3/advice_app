import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        print('brl brl brllllll!');
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Get Advice'),
          ),
        ),
      ),
    );
  }
}
