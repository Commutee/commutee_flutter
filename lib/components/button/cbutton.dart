// ignore: file_names
import 'package:commutee_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class Cbutton extends StatelessWidget {
  final String placeholder;
  final Function()? ontap;
  const Cbutton({super.key, required this.placeholder, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: TextButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: cPrimarycolor),
        onPressed: ontap,
        child: Text(
          placeholder,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

/*
return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          color: cPrimarycolor, borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
        placeholder,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
*/