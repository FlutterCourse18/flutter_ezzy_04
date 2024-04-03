import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
