import 'package:commutee_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 170,
          ),
          const SizedBox(
            height: 100,
          ),
          const CircularProgressIndicator(
            color: cPrimarycolor,
          )
        ],
      )),
    );
  }
}
