import 'package:flutter/material.dart';

class PartsButton extends StatelessWidget {
  const PartsButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      // height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(width: 2, color: const Color(0xffffffff).withOpacity(0.7))
          ),
        ),
        onPressed: onPressed,
        // onPressed: null,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
