import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.inputType = TextInputType.name,
    required this.label,
    required this.hint,
    this.obscureType = false,
    this.suffix,
  });

  final String label;
  final String hint;
  final TextInputType? inputType;
  final bool? obscureType;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          keyboardType: inputType,
          controller: controller,
          obscureText: true,
          obscuringCharacter: "\u2022",
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            // suffix: suffix,
            contentPadding: const EdgeInsets.all(14.0),
            suffixIcon: suffix,
            suffixIconColor: Colors.white,
            hoverColor: Colors.white,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white.withOpacity(0.5),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white.withOpacity(0.5),
                width: 1,
              ),
            ),
            fillColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
