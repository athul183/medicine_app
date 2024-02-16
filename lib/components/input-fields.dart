import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    required this.inputController,
    required this.hintTxt,
    this.flag = false,
  });
  final TextEditingController inputController;
  final String hintTxt;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: flag,
      controller: inputController,
      style: const TextStyle(
        color: Color(0xffffffff),
      ),
      decoration: InputDecoration(
        fillColor: Colors.white24,
        filled: true,
        hintText: hintTxt,
        hintStyle: const TextStyle(
          color: Color(0xffffffff),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white24,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff15c79a),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
