import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final BuildContext context;
  final bool isPassword;

  const CustomEntryField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.context,
    this.isPassword = false,
  }) : super(key: key);

  @override
  /*
    Vertical margin : 15
    Background color : Colors.grey.shade 200
    border Radius : circular(30)
    Set the TextField controller to controller
    Only obscure text when isPassword is true
    Outline border color : Colors.blue
    Outline border radius : circular(30)
    Set the hint text to hint
  */

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
