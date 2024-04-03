import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundButton = Colors.transparent,
    this.buttonTextColor = Colors.white,
  });

  final String title;
  final Function()? onPressed;
  final Color? backgroundButton;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                  width: 2, color: const Color(0xffffffff).withOpacity(0.7))),
        ),
        onPressed: onPressed,
        // onPressed: null,
        child: Text(
          title,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
