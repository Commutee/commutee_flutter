import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:flutter/material.dart';
import '../../components/input/textinput.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/basic.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Commutee",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(243, 98, 46, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: const Text(
                                'Hello, John!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const Text(
                              'Good day to plan your trip',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      ClipOval(child: Image(
                        image: AssetImage("assets/images/man.png"),
                        width: 75,
                        height: 75,
                      )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0xFFD5D5D5),
                    ),
                  ),
                  // margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 320,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: TextFormField(
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Where to go next?',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ],
                  ),
                )
              ]))),
    );
  }
}
