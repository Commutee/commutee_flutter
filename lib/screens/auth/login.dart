import 'package:commutee_flutter/components/alert/basicAlert.dart';
import 'package:commutee_flutter/components/button/cButton.dart';
import 'package:commutee_flutter/components/input/textinput.dart';
import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:commutee_flutter/screens/auth/register.dart';
import 'package:commutee_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passcontroller.dispose();
  }

  void ontapSignin() async {
    final email = _emailcontroller.text;
    final password = _passcontroller.text;
    if (email != "" && password != "") {
      String s = await Auth().signinWithEmail(email: email, password: password);
      if (s != 'success') {
        // ignore: use_build_context_synchronously
        basicAlert(context, "Error", s);
      }
    } else {
      basicAlert(context, "Empty feilds",
          "Your username or password is not filled please Fill the empty feilds");
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
                  "Welcome back you have been missed",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Textinput(
                    autoFocus: true,
                    textEditingController: _emailcontroller,
                    placeholder: "Email Address",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Forgot password?"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Cbutton(
                  placeholder: "Sign in",
                  ontap: ontapSignin,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Or Continue with",
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Cbutton(
                  placeholder: "Continue with google",
                  ontap: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account ? "),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegisterScreen())),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            color: cPrimarycolor, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
