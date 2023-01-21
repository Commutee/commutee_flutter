import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool password;
  final String placeholder;
  final TextInputType textInputType;
  final bool autoFocus;
  const Textinput(
      {super.key,
      this.autoFocus = false,
      required this.textEditingController,
      this.password = false,
      required this.placeholder,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFocus,
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 5)),
      keyboardType: textInputType,
      obscureText: password,
    );
  }
}
