import 'package:commutee_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

void basicAlert(BuildContext context, String title, String content) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context, "ok"),
                  child: const Text(
                    "Ok",
                    style: TextStyle(color: cPrimarycolor),
                  ))
            ],
          ));
}
