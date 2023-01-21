import 'package:commutee_flutter/components/alert/basicAlert.dart';
import 'package:commutee_flutter/components/button/cbutton.dart';
import 'package:commutee_flutter/components/input/textinput.dart';
import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:commutee_flutter/screens/auth/login.dart';
import 'package:commutee_flutter/screens/mainscreen.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _repasswordctrller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passcontroller.dispose();
    _usernamecontroller.dispose();
    _repasswordctrller.dispose();
  }

  void register() async {
    String username = _usernamecontroller.text;
    String email = _emailcontroller.text;
    String password = _passcontroller.text;
    String repass = _repasswordctrller.text;

    if (username != "" && password != "" && email != "" && repass != "") {
      if (password == repass) {
        String s = await Auth().createUserwith(
            username: username, email: email, password: password);
        if (s != 'success') {
          // ignore: use_build_context_synchronously
          basicAlert(context, "Error", s);
        } else {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Mainscreen()));
        }
      } else {
        basicAlert(context, "Mismatch password",
            "The password you enter dont match . please correct them");
      }
    } else {
      basicAlert(context, "Empty Feilds",
          "Some of the feilds are empty please fill them");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 170,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Sign up to get started",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Textinput(
                textEditingController: _usernamecontroller,
                placeholder: "Username",
                textInputType: TextInputType.name,
                autoFocus: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Textinput(
                  textEditingController: _emailcontroller,
                  placeholder: "Email address",
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 10,
              ),
              Textinput(
                textEditingController: _passcontroller,
                placeholder: "Password",
                textInputType: TextInputType.visiblePassword,
                password: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Textinput(
                textEditingController: _repasswordctrller,
                placeholder: "Re enter Password",
                textInputType: TextInputType.visiblePassword,
                password: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Cbutton(placeholder: "Register", ontap: register),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ? "),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Loginscreen())),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: cPrimarycolor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      )),
    );
  }
}
